#! /bin/bash

sudo apt-get clean
tput clear reset

mkdir -p $HOME/.local/bin
mkdir -p $HOME/.local/tools

ln -sf $HOME/MacDrive/bb0x/profile.txt $HOME/.profile
printf "source $HOME/.profile\n\n" >> $HOME/.zshrc

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

printf "[+] Installing tools\n"
sudo apt-get install -y net-tools wget iputils-ping curl vim tmux screenfetch gdebi git unzip bat exa lolcat snap openssh-server docker-compose docker.io jq snapd xclip samba

sudo usermod -aG docker $USER
sudo systemctl restart docker.service
sudo systemctl enable docker.service
tput clear reset

printf "[+] Installing Python - PyEnv\n"
sudo apt install -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
curl -fsSL https://pyenv.run | bash

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $HOME/.bashrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> $HOME/.bashrc
echo 'eval "$(pyenv init - bash)"' >> $HOME/.bashrc

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

pyenv install 3.10.16
pyenv local 3.10.16

echo
echo

printf "[+] Installing NVM\n"
nvm_version=$(curl -sq https://api.github.com/repos/nvm-sh/nvm/releases/latest | jq -r '.tag_name')
curl -s -o- "https://raw.githubusercontent.com/nvm-sh/nvm/$nvm_version/install.sh" | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install --no-progress --lts

echo
echo

printf "[+] Installing GoLang\n"
go_version=$(curl -s https://go.dev/VERSION?m=text | head -n 1)
wget -q "https://go.dev/dl/$go_version.linux-amd64.tar.gz"
tar -xvf "$go_version.linux-amd64.tar.gz"
mv -f go $HOME/.local/
ln -sf $HOME/.local/go/bin/go $HOME/.local/bin/go
rm -rf "$go_version.linux-amd64.tar.gz"

echo
echo

printf "[+] Installing TMux Themes\n"
mkdir -p $HOME/.tmux/plugins
git clone --quiet https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
git clone --quiet https://github.com/o0th/tmux-nova.git $HOME/.tmux/plugins/tmux-nova

ln -sf $HOME/MacDrive/bb0x/tmux.conf $HOME/.tmux/tmux.conf

echo
echo

printf "[+] Enabling Shared Drive - MacDrive\n"
sudo apt-get install -y samba
mkdir -p "$HOME/MacDrive"
printf "kali\nkali\n" | sudo smbpasswd -a kali

printf '[MacDrive]\n' | sudo tee -a /etc/samba/smb.conf
printf '\tcomment = Shared Files for Host\n' | sudo tee -a /etc/samba/smb.conf
printf '\tpath = /home/kali/MacDrive\n' | sudo tee -a /etc/samba/smb.conf
printf '\tbrowseable = yes\n' | sudo tee -a /etc/samba/smb.conf
printf '\tread only = no\n' | sudo tee -a /etc/samba/smb.conf
printf '\tguest ok = no\n' | sudo tee -a /etc/samba/smb.conf
printf '\tvalid users = kali \n' | sudo tee -a /etc/samba/smb.conf
printf '\tcreate mask = 0777\n' | sudo tee -a /etc/samba/smb.conf
printf '\tdirectory mask = 0777\n' | sudo tee -a /etc/samba/smb.conf

sudo systemctl restart smbd.service
sudo systemctl enable smbd.service
sudo systemctl status smbd.service

echo
echo
