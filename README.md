# Installation Instructions

* Run this first to perform the full system update and upgrade.
* Also, run this minimum 3 times.

```bash
tput clear reset
printf "[+] Updating the System\n\n"
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get remove
sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install build-essential -y
sudo apt-get install linux-headers-$(uname -r) -y
printf "\n\n[+] Updated the System\n\n"
```

## Run below commands

```bash
mkdir -p $HOME/.local/bin
mkdir -p $HOME/.local/tools

printf "[+] Installing tools\n"
sudo apt-get install -y net-tools wget iputils-ping curl vim tmux git unzip bat open-vm-tools lightdm-gtk-greeter-settings
sudo apt-get install -y eza lolcat openssh-server docker-compose docker.io jq snap xclip samba

sudo usermod -aG docker $USER
sudo systemctl restart docker.service
sudo systemctl enable docker.service
tput clear reset

```

## Feature Customizations

* Add new wallpapers
* Add new profile picture
* Adding icons to dash
* Complete the system update
* Install Nerd Fonts using `getnf`
  * `curl -fsSL https://raw.githubusercontent.com/getnf/getnf/main/install.sh | bash`
* When changing lock screen background and profile picture, use `sudo lightdm-gtk-greeter-settings` and save images in `/usr/share/backgrounds/xfce/` folder
