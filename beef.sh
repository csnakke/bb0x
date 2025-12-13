#! /bin/bash

printf "[+] Installing BeEF\n"
git clone --quiet https://github.com/beefproject/beef.git $HOME/.local/tools/beef
gem install domain_name racc rubocop http-cookie xmlrpc rest-client rushover

cd $HOME/.local/tools/beef
./install

printf "[+] Run ./beef from the folder\n"
