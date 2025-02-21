#!/bin/bash
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y stylua clangd clang-format python3-pip python3-venv nodejs
pip3 install --user pyright
npm i @johnnymorganz/stylua-bin
