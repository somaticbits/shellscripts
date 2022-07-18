#!/bin/bash

source ./libs/colors.sh

echo
echo -e "${yellow}*******************************************************${endColor}"
echo -e "${yellow}* Welcome to somaticbits's install script for Ubuntu! *${endColor}"
echo -e "${yellow}*******************************************************${endColor}"
echo

echo -e "${yellow}--- Updating system${endColor}"

sudo apt-get -q update
sudo apt-get -yq upgrade
sudo apt-get -yq install ca-certificates curl gnupg lsb-release
sudo apt-get -yq install jq
chmod +x ./libs/*

# get and install docker
./libs/get-docker.sh

# get and install neovim
./libs/get-neovim.sh

