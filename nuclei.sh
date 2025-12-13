#! /bin/bash

printf "[+] Installing Nuclei\n"
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
