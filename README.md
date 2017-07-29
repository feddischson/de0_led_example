

Simple DE0 LED Example
=======================
This is just a very small design to test the Terasic DE0 SOC board. 
The intention was to have a project 
to test the tool-chain and the whole 
setup (synthesis tools, usb-driver, cable connection).

Expected result: binary counter whose result is connected to the LEDs.
The speed can be adjusted with the four switches (SW), SW=4'b0000 means
halt.


Build
========
Just run `syn.sh` to do the whole Synthesis + Compilation.


Howto setting up the USB-Blaster on linux
===========================================
See https://www.altera.com/support/support-resources/download/drivers/dri-usb_b-lnx.html

On a Gentoo machine, add something like the following to `/etc/udev/rules.d/51-usbblaster.rules`:
```
# USB-Blaster
SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device", ATTR{idVendor}=="09fb", ATTR{idProduct}=="6001", MODE="0666", NAME="bus/usb/$env{BUSNUM}/$env{DEVNUM}", RUN+="/bin/chmod 0666 %c"
SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device", ATTR{idVendor}=="09fb", ATTR{idProduct}=="6002", MODE="0666", NAME="bus/usb/$env{BUSNUM}/$env{DEVNUM}", RUN+="/bin/chmod 0666 %c"
SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device", ATTR{idVendor}=="09fb", ATTR{idProduct}=="6003", MODE="0666", NAME="bus/usb/$env{BUSNUM}/$env{DEVNUM}", RUN+="/bin/chmod 0666 %c" 

# USB-Blaster II

SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device", ATTR{idVendor}=="09fb", ATTR{idProduct}=="6010", MODE="0666", NAME="bus/usb/$env{BUSNUM}/$env{DEVNUM}", RUN+="/bin/chmod 0666 %c"
SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device", ATTR{idVendor}=="09fb", ATTR{idProduct}=="6810", MODE="0666", NAME="bus/usb/$env{BUSNUM}/$env{DEVNUM}", RUN+="/bin/chmod 0666 %c"
```

