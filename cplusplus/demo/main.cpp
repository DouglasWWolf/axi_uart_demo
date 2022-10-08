#include <stdio.h>
#include "axi_uart.h"
using std::string;

CAxiUart AXI;

//=============================================================================
// get_device_name() - Returns the name of the serial device, as read from
//                     an environment variable
//=============================================================================
string get_device_name()
{
    const char* evname = "axi_uart_device";

    // Fetch the environment variable that contains our device name
    char* ev = getenv(evname);
    
    // If that variable doesn't exist, tell the user
    if (ev == nullptr)
    {
        fprintf(stderr, "missing environment variable '%s'\n", evname);
        exit(1);
    }

    // Hand the device name to the caller
    return ev;
}
//=============================================================================


//=============================================================================
// help() - Show the command line ujsage of this program
//=============================================================================
void help()
{
    printf("usage: axireg <address>\n");
    printf("       axireg <address> <data>\n");
    printf("\n<address> and <data> can be in hex or decimal\n");
    exit(0);
}
//=============================================================================



//=============================================================================
// main() - Command line is:
// 
// <program_name> <address>
//     -- or --
// <program_name> <address> <data>
//=============================================================================
int main(int argc, const char** argv)
{
    int error;
    uint32_t data;

    // If we have the wrong number of arguments, display help and exit
    if (argc < 2 || argc > 3) help();

    // Fetch the AXI address we want to read or write
    uint64_t address = strtoull(argv[1], 0, 0);   
    
    // If we're going to write a data value, fetch it
    if (argc == 3) data = strtoul(argv[2], 0, 0);

    // Fetch the device name of our serial port
    string device = get_device_name();

    // Connect to the FPGA via a serial port
    if (!AXI.connect(device, 115200))
    {
        printf("%s not found or no permissions\n", device.c_str());
        exit(1);        
    }

    // If the user wants to perform an AXI read...
    if (argc == 2)
    {
        // Perform an AXI read
        error = AXI.read(address, &data);

        // If an AXI read-error occured, show the error code
        if (error) printf("Error: read-response = %i\n", error);

        // Otherwise, display the data value we read
        else printf("%u (0x%08X)\n", data, data);
    }

    // Otherwise, the user wants to perform an AXI write.
    else
    {
        // Perform the AXI write
        error = AXI.write(address, data);

        // If an AXI write-error occured, show the error code
        if (error) printf("Error: write-response = %i\n", error);
    }
 
    // Tell the OS whether or not this worked
    return error;
}
//=============================================================================

