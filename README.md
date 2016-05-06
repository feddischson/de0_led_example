

Simple DE0 LED Example
=======================
This is just a very small design to test the Terasic DE0 SOC board. 
The intention was to have a project 
to test the toolchain and the whole 
setup (synthese tools, usb-driver, cable connection).

Expected result: binary counter whose result is connected to the LEDs.
The speed can be adjusted with the four switches (SW), SW=4'b0000 means
halt.

Build
========
Just run `syn.sh` to do the whole Synthesis + Compilation.

