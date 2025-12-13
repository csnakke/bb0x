#! /bin/bash


printf "[+] Installing Sliver C2\n"
mkdir -p "$HOME/.local/tools/sliver"

cd  "$HOME/.local/tools/sliver"

wget --quiet https://github.com/BishopFox/sliver/releases/latest/download/sliver-client_linux
wget --quiet https://github.com/BishopFox/sliver/releases/latest/download/sliver-server_linux

mv -f sliver-client_linux sliver-client
mv -f sliver-server_linux sliver-server

chmod +x "$HOME/.local/tools/sliver/sliver-client"
chmod +x "$HOME/.local/tools/sliver/sliver-server"

ln -sf "$HOME/.local/tools/sliver/sliver-client" "$HOME/.local/bin/sliver-client"
ln -sf "$HOME/.local/tools/sliver/sliver-server" "$HOME/.local/bin/sliver-server"
