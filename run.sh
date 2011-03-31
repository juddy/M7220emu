#!/bin/bash
#
# ha ha
###################

which qemu-system-arm
if [ $? -ne 0 ]
then
	echo " - Installing qemu arm emulator.."
	sudo apt-get install qemu-system-arm
fi
echo " - Launching M7220 disk image rdisk-m7220-1-0-14.."
echo " yeah, the screen is whack.  I can't get their damned kernel to boot."
echo " or a new ARM kernel to compile with VGA, using their sources/patches/drivers"
echo 
echo " Press some keys! It's fun :)"
echo "CTRL-C to quit."

qemu-system-arm -m 256 -M versatilepb -kernel vmlinuz-2.6.26-2-versatile -initrd ../m7220/rdisk-m7220-1-0-14 -append "ramdisk_size=128000 vga=269"
