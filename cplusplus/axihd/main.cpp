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
    printf("axidump <AXI address> [# of 32-bit words]\n");
    exit(0);
}
//=============================================================================


//=============================================================================
// main() - Command line is:
//     <AXI address to start at>
//     [number of 32-bit words to dump]
//=============================================================================
int main(int argc, const char** argv)
{
    uint32_t wordCount = 0x40, data;

    string device = get_device_name();
    if (!AXI.connect(device, 115200))
    {
        fprintf(stderr, "%s not found or no permissions\n", device.c_str());
        exit(1);        
    }

    // If there aren't enough parameters on the command line, show help
    if (argc < 2) help();

    // Fetch the AXI address
    uint32_t axiAddress = strtoul(argv[1], 0, 0);

    // If the user gave us a count of 32-bit words, parse it
    if (argv[2]) wordCount = strtoul(argv[2], 0, 0);

    // Open up the standard Linux hex-dump utility
    FILE* fp = popen("hd", "w");

    // And copy the correct number of 32-bit words from AXI to local ram
    while(wordCount--)
    {
        AXI.read(axiAddress, &data);
        fprintf(fp, "%c", (data >>  0) & 0xFF);
        fprintf(fp, "%c", (data >>  8) & 0xFF);
        fprintf(fp, "%c", (data >> 16) & 0xFF);
        fprintf(fp, "%c", (data >> 24) & 0xFF); 
        fflush(fp);
        axiAddress += 4;        
    }

    // Tell the OS that all is well
    return 0;
}
//=============================================================================

