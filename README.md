# AXI-UART Bridge - Vivado 2021.1

 - Folder 'nexys_a7' contains design implemented on Nexys-A7-100T
 - Folder 'xilinx_zcu104' contains design implemented on Xilinx ZCU-104
 - Folder 'cplusplus' contains C++ source for host side access
 - Folder 'python' contains Python source for host side access
 
With no other USB serial devices plugged in, the serial port on the Nexys A7 will probably appear as /dev/ttyUSB2
 
With no other USB serial devices plugged in, the serial port on the Xilinx ZCU-104 will probably appear as /dev/ttyUSB3
 
Both the C++ and Python example programs expect to find the name of the serial device in environment variable 'axi_uart_device'
 
