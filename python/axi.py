#!/usr/bin/python3
import serial
import time

# =========================================================================================================
#  class AXI - An interface to read/write AXI4-Lite registers via a serial port
# =========================================================================================================
class AXI:

    sp         = None
    CMD_READ  = b'\x03'
    CMD_WRITE = b'\x04'

    # -----------------------------------------------------------------------------------------------------
    # init() - Call this first to initialize the serial port
    #
    # Passed:  port = device name of the serial port
    #          baud = baud rate that the FPGA UART expects
    #
    # Returns: nothing
    # -----------------------------------------------------------------------------------------------------
    def init(self, port, baud=115200):
        self.sp = serial.Serial(port, baud)
    # ------------------------------------------------------------------------------------------------------

    # -----------------------------------------------------------------------------------------------------
    # read() - Reads an AXI register
    #
    # Passed:  address = The address of the AXI register
    #
    # Returns: [0]: the AXI read-response byte (0 = OKAY)
    #          [1]: the data that was read from the specified AXI register
    # -----------------------------------------------------------------------------------------------------
    def read(self, address):
        self.sp.write(self.CMD_READ + address.to_bytes(8, 'big'))
        status = int.from_bytes(self.sp.read(1), 'big')
        data = int.from_bytes(self.sp.read(4), 'big')
        return status, data
    # -----------------------------------------------------------------------------------------------------

    # -----------------------------------------------------------------------------------------------------
    # write() - Writes a value to an AXI register
    #
    # Passed:  address = The address of the AXI register
    #          data    = Data to be written to the specified AXI register
    #
    # Returns: the AXI write-response byte (0 = OKAY)
    # -----------------------------------------------------------------------------------------------------
    def write(self, address, data):
        self.sp.write(self.CMD_WRITE + address.to_bytes(8, 'big') + data.to_bytes(4, 'big'))
        status = int.from_bytes(self.sp.read(1), 'big')
        return status
    # -----------------------------------------------------------------------------------------------------

    # -----------------------------------------------------------------------------------------------------
    # reset() - Resets the FPGA's UART buffer to a known state
    # -----------------------------------------------------------------------------------------------------
    def reset(self):
        self.sp.write(b'XXXXXXXXXXXXXXXX')
        time.sleep(.150)
        self.sp.timeout = .100
        while self.sp.read(1):
            pass
        self.sp.timeout = None
    # -----------------------------------------------------------------------------------------------------

    # -----------------------------------------------------------------------------------------------------
    # close() - Closes the serial port
    # -----------------------------------------------------------------------------------------------------
    def close(self):
        if self.sp:
            self.sp.close()
            self.sp = None
    # -----------------------------------------------------------------------------------------------------

# =========================================================================================================



# =========================================================================================================
# From here down is program that allows a user to read/write AXI registers from the command-line
# =========================================================================================================
def usage():
    print("usage: axi.py read <address>")
    print("       axi.py write <address> <data>")
    quit()


if __name__ == '__main__':
    import sys
    import os

    ev = 'axi_uart_device'
    device=os.getenv(ev)
    if device == None:
        print("Missing environment variable '%s'" % ev)
        quit()

    # Create an AXI object and connect it to the serial port
    axi = AXI()
    axi.init(device)

    # Ensure that the user gave us enough command line arguments
    if len(sys.argv) < 2:
        usage()

    # Fetch the first letter of the read/write command
    cmd = sys.argv[1][0]

    # If the user wants to read an AXI register...
    if cmd == 'r':
        if len(sys.argv) < 3:
            usage()
        address = int(sys.argv[2], 0)
        status, data = axi.read(address)
        if status:
            print("Error: read-status = ", status)
        else:
            print(data)

    # Otherwise, if the user wants to write to an AXI register...
    elif cmd == 'w':
        if len(sys.argv) < 4:
            usage()
        address = int(sys.argv[2], 0)
        data    = int(sys.argv[3], 0)
        status = axi.write(address, data)
        if status:
            print("Error: write-status = ", status)

    # Otherwise, if the user wants to run a continuous AXI read/write test...
    elif cmd == 't':
        SWITCH_ADDR = 0x40000000
        LEDS_ADDR   = 0x40010000
        pattern = [1, 2, 8, 4]
        idx = 0
        print("Set switches to all 0 (i.e., down) to halt")
        _, switches = axi.read(SWITCH_ADDR)
        print("Current switch settings = ", switches)
        while True:
            time.sleep(.10)
            idx = (idx + 1) & 3
            axi.write(LEDS_ADDR, pattern[idx])
            _, new_switches = axi.read(SWITCH_ADDR)
            if switches != new_switches:
                switches = new_switches
                print("Current switch settings = ", switches)
            if switches == 0:
                break


    # Otherwise, just display the usage
    else:
        usage()
# =========================================================================================================
