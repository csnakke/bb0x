#! /bin/bash

printf "[+] Installing Bloodhound CE\n"
sudo apt-get install -y bloodhound bloodhound-ce neo4j
bloodhound
