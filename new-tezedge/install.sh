#!/bin/bash

source ./libs/colors.sh

echo
echo -e "${yellow}********************************************************${endColor}"
echo -e "${yellow}* Welcome to somaticbits's install script for Tezedge! *${endColor}"
echo -e "${yellow}********************************************************${endColor}"
echo
echo -e "${yellow}--- Pulling Tezedge Docker image${endColor}"
echo

chmod +x ./libs/*
docker pull tezedge/tezedge:latest-release

echo
echo -e "${yellow}--- Creating folders for permanent storage${endColor}"
echo

# Creating folders for permanent storage of Docker volumes
mkdir -p ${TEZOS_PATH}/node
chmod 777 ${TEZOS_PATH}/node

./libs/get-snapshot.sh
./libs/install-snapshot.sh

echo
echo -e "${yellow}--- Running Docker Tezos container${endColor}"
echo
