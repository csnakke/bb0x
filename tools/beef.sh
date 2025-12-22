#! /bin/bash

printf "[+] Installing BeEF\n"
git clone --quiet https://github.com/beefproject/beef.git $HOME/.local/tools/beef
gem install domain_name racc rubocop http-cookie xmlrpc rest-client rushover

cd $HOME/.local/tools/beef
./install

printf "[+] Update the config.yaml file and change credentials to admin/admin and port to 4000 from 3000\n"
printf "[+] Run ./beef from the folder\n"

echo
echo

printf "[+] Web URL: http://localhost:4000/ui/panel"
