#! /bin/bash

printf "[+] Installing GoLang\n"
go_version=$(curl -s https://go.dev/VERSION?m=text | head -n 1)
wget -q "https://go.dev/dl/$go_version.linux-amd64.tar.gz"
tar -xf "$go_version.linux-amd64.tar.gz"
mv -f go $HOME/.local/
ln -sf $HOME/.local/go/bin/go $HOME/.local/bin/go
rm -rf "$go_version.linux-amd64.tar.gz"
