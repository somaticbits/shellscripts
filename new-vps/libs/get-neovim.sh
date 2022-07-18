#!/bin/bash

source ./libs/colors.sh

echo -e "${yellow}--- Installing NeoVim${endColor}"

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar -xvf nvim-linux64.tar.gz && rm nvim-linux64.tar.gz
sudo cp nvim-linux64/bin/nvim /usr/bin/nvim
rm -rf nvim-linux64
