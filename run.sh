#!/bin/bash
echo "By using this script. Anything that may go wrong, like a broken distro or lost of data will be your fault. I take no responsibility in anything that may go wrong. Please accept these terms by pressing enter."
read -p "Press [ENTER] to accept the terms and continue."
apt update && apt dist-upgrade -y && reboot
apt-get remove nvidia*
rm /etc/modprobe.d/nvidia-installer-disable-nouveau.conf
rm  /etc/X11/xorg.conf
rm /usr/share/gdm/greeter/autostart/display_setup.desktop
apt install -y ocl-icd-libopencl1 nvidia-driver nvidia-cuda-toolkit
nvidia-smi
echo "If the last command didn't run, then the installation didn't go as plan."
echo "Nevertheless, reboot the computer anyway."
read -n 1 -s -r -p "Press any key to reboot"

