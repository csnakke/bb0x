#! /bin/bash

printf "[+] Enabling Shared Drive - SharedDrive\n"
sudo apt-get install -y samba
mkdir -p "$HOME/SharedDrive"
printf "$USER\n$USER\n" | sudo smbpasswd -a "$USER"

printf '[SharedDrive]\n' | sudo tee -a /etc/samba/smb.conf
printf '\tcomment = Shared Files for Host\n' | sudo tee -a /etc/samba/smb.conf
printf "\tpath = $HOME/SharedDrive\n" | sudo tee -a /etc/samba/smb.conf
printf '\tbrowseable = yes\n' | sudo tee -a /etc/samba/smb.conf
printf '\tread only = no\n' | sudo tee -a /etc/samba/smb.conf
printf '\tguest ok = no\n' | sudo tee -a /etc/samba/smb.conf
printf '\tvalid users = kali \n' | sudo tee -a /etc/samba/smb.conf
printf '\tcreate mask = 0777\n' | sudo tee -a /etc/samba/smb.conf
printf '\tdirectory mask = 0777\n' | sudo tee -a /etc/samba/smb.conf

sudo systemctl restart smbd.service
sudo systemctl enable smbd.service
sudo systemctl status smbd.service

ethIP=$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
printf "\n\n[+] Connect: smb://$ethIP/SharedDrive\n"
