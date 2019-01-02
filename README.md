# linux-nvidia-fix
Fixes the black screen bug, that may occure after installing the nvidia drivers for linux.

If you experence a black screen with a blinking cursor, then this script may be able to fix the issue and restore you dekstop enviroment.

**By using this script. Anything that may go wrong, like a broken distro or lost of data will be your fault. 
I take no responsibility in anything that may go wrong.**

> This script was tested on Kali Linux Kali [GNU/Linux Rolling 2019.1]

# How to install

1. press and hold ctrl + alt + f2 (This will get you into another terminal)
2. logoin with your normal login account with root access
3. cd /tmp
4. git clone https://github.com/DavidNgoDev/linux-nvidia-fix.git
5. cd linux-nvidia-fix
6. chmod +x run.sh
7. ./run.sh

Here is the script:
```
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
```
Enjoy :simple_smile:
