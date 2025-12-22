#! /bin/bash

printf "[+] Installing NVM\n"
nvm_version=$(curl -sq https://api.github.com/repos/nvm-sh/nvm/releases/latest | jq -r '.tag_name')
curl -s -o- "https://raw.githubusercontent.com/nvm-sh/nvm/$nvm_version/install.sh" | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install --no-progress --lts

printf "[+] Make sure to remove exported values from .zshrc or .bashrc because profile already has it..."
