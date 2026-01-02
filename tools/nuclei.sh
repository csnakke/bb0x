#! /bin/bash

printf "[+] Installing Nuclei\n"
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest

ln -sf $HOME/go/bin/nuclei $HOME/.local/bin/nuclei
