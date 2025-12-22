#! /bin/bash

printf "[+] Installing TMux Themes\n"
sudo apt-get install -y tmux
mkdir -p $HOME/.tmux/plugins
git clone --quiet https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
git clone --quiet https://github.com/o0th/tmux-nova.git $HOME/.tmux/plugins/tmux-nova
