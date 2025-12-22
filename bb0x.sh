#! /bin/bash

sudo apt-get clean
tput clear reset



ln -sf $HOME/MacDrive/bb0x/profile.txt $HOME/.profile


printf "[+] Updating the System\n"
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get remove
sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install build-essential -y
sudo apt-get install linux-headers-`uname -r` -y
tput clear reset

printf "[+] Updating the System again\n"
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get remove
sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install build-essential -y
sudo apt-get install linux-headers-`uname -r` -y
tput clear reset

printf "[+] Updating the System one last time\n"
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get remove
sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install build-essential -y
sudo apt-get install linux-headers-`uname -r` -y
tput clear reset





echo
echo


