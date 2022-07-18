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
sudo apt-get -y upgrade
sudo apt-get -y install ca-certificates curl gnupg lsb-release!
sudo apt-get -y install jq
chmod +x ./libs/*
cd ~ || exit

./libs/get-docker.sh

./libs/get-neovim.sh

