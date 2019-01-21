#!/bin/bash

echo "============================================================================"
echo "                         Fujitsu Scanner Installer 1.4"
printf '\e[93;5;196m \n'
echo -e "\e[1m"
echo "                           === Coded by Anit S ==="
sleep 2
#printf '\e[32;0;196m \n'
echo " "
echo -e "\e[5m \e[25m"
printf '\e[32;196m \n'
echo -n " ==> Update System before Installing? (Y/N)" 
read val

if [ "$val" == "y" ]; then
echo " ==> Updating System..."
sudo apt update
clear
echo "============================================================================"
echo "                         Scanner Software Installer "
printf '\e[93;5;196m \n'
echo -e "\e[1m"
echo "                           === Coded by Anit S ==="
echo " "
echo -e "\e[5m \e[25m"
printf '\e[32;196m \n'
echo -n " ==> Update System before Installing? (Y/N)y" 
echo " ==> Done "
fi


echo " ==> Installing Driver... "


MACHINE_TYPE=`uname -m`
if [ ${MACHINE_TYPE} == 'x86_64' ]; then


sudo dpkg -i pfusp-ubuntu14.04_2.1.0_amd64.deb

elif [ ${MACHINE_TYPE} == 'x86' ]; then
  
sudo dpkg -i pfusp-ubuntu14.04_2.1.0_i386.deb

else

echo "Failed to Find Arc. Enter it manually"
echo "1) 32 bit                   2) 64 bit"
echo "Enter (1/2)"

read val

if [ "$val" == "1" ]; then

sudo dpkg -i pfusp-ubuntu14.04_2.1.0_i386.deb

fi

if [ "$val" == "2" ]; then

sudo dpkg -i pfusp-ubuntu14.04_2.1.0_amd64.deb

fi
  
fi

echo " ==> Done "
read -n 1 -s -r -p "==> Now Connect the Scanner, Turn it ON and Press any Key to continue"
echo " :D"
echo -n " ==> Installing Additional Softwares... "
sudo apt install simple-scan 
sudo apt install sane sane-utils libsane-extras xsane

clear
echo "============================================================================"
echo "                         Scanner Software Installer "
printf '\e[93;5;196m \n'
echo -e "\e[1m"
echo "                           === Coded by Anit S ==="
echo " "
echo -e "\e[5m \e[25m"
printf '\e[32;196m \n'
echo " ==> .                      ...INSTALLATION SUCCESS... "
echo " ==> Opening scanner Softwares.... " 
simple-scan
xsane
clear
read -n 1 -s -r -p "==> THIS PROGRAM IS STRICTLY BASED ON THE INSTALLATION GUIDE PROVIDED"
exit

