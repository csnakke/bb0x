# Installation Instructions

Run this first to perform the full system update and upgrade.
Also, run this minimum 3 times.

tput clear reset && printf "[+] Updating the System\n\n" && sudo apt-get clean && sudo apt-get autoclean && sudo apt-get remove && sudo apt-get autoremove && sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt-get install build-essential -y && sudo apt-get install linux-headers-$(uname -r) -y && printf "\n\n[+] Updated the System\n\n"

### Once this is performed run `bb0x.sh`
