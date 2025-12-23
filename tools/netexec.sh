#! /bin/bash

printf "\n[+] Installing NetExec\n"
sudo apt-get install -y pipx git
pipx ensurepath
pipx install git+https://github.com/Pennyw0rth/NetExec
