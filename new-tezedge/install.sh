#!/bin/bash

source ./libs/colors.sh

echo
echo -e "${yellow}********************************************************${endColor}"
echo -e "${yellow}* Welcome to somaticbits's install script for Tezedge! *${endColor}"
echo -e "${yellow}********************************************************${endColor}"
echo

echo -e "${yellow}--- Downloading snapshot${endColor}"

chmod +x ./libs/*
./libs/get-snapshot.sh
