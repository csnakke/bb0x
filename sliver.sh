#! /bin/bash


printf "[+] Installing Sliver C2\n"
mkdir -p "$HOME/.local/tools/sliver"

wget --quiet --output-file="$HOME/.local/tools/sliver/sliver-client" https://github.com/BishopFox/sliver/releases/latest/download/sliver-client_linux
wget --quiet --output-file="$HOME/.local/tools/sliver/sliver-server" https://github.com/BishopFox/sliver/releases/latest/download/sliver-server_linux

chmod +x "$HOME/.local/tools/sliver/sliver-client"
chmod +x "$HOME/.local/tools/sliver/sliver-server"

ln -sf "$HOME/.local/tools/sliver/sliver-client" "$HOME/.local/bin/sliver-client"
ln -sf "$HOME/.local/tools/sliver/sliver-server" "$HOME/.local/bin/sliver-server"
