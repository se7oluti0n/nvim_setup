#!/bin/bash
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.5/install.sh | bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"
# Download and install Node.js:
nvm install 24

sudo apt install -y xclip luajit python3-pip python3-venv ripgrep liblua5.1-0-dev
#pip3 install --user pyright

