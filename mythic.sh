#! /bin/bash

git clone --quiet https://github.com/its-a-feature/Mythic --depth 1 --single-branch $HOME/.local/tools/mythic
cd "$HOME/.local/tools/mythic"
./install_docker_kali.sh

sudo make

sudo ./mythic-cli status # Will create .env file with random password
sudo ./mythic-cli start

printf "[+] Web URL runs at https://localhost:7443"

printf "[+] Use `sudo ./mythic-cli config service` to get status"
printf "[+] Use `cat .env | grep ADMIN` to get credentials"
