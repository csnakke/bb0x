#! /bin/bash

printf "[+] Installing Bloodhound CE\n"
sudo apt-get install -y bloodhound bloodhound-ce-python neo4j
bloodhound-setup

# Update the file sudo vim /etc/bhapi/bhapi.json and update both the credentials - neo4j and admin

bloodhound
