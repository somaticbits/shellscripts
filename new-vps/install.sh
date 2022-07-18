#!/bin/bash

source ./libs/colors.sh
source ./libs/get-neovim.sh
source ./libs/get-docker.sh

echo
echo -e "${yellow}*******************************************************${endColor}"
echo -e "${yellow}* Welcome to somaticbits's install script for Ubuntu! *${endColor}"
echo -e "${yellow}*******************************************************${endColor}"
echo

echo -e "${yellow}--- Updating system${endColor}"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install ca-certificates curl gnupg lsb-release! -y
sudo apt-get install jq -y
chmod +x ./libs/*
cd ~ || exit

./libs/get-docker.sh

./libs/get-neovim.sh

