#!/bin/bash

source ./libs/colors.sh

# Not working yet.
sudo apt install -y npm
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh) -y
echo "PATH=""$PATH":"$HOME"/.local/share/lunarvim"" >> ~/.bashrc
