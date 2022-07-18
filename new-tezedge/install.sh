#!/bin/bash

source ./libs/colors.sh
source ./libs/config.sh

echo
echo -e "${yellow}********************************************************${endColor}"
echo -e "${yellow}* Welcome to somaticbits's install script for Tezedge! *${endColor}"
echo -e "${yellow}********************************************************${endColor}"
echo
echo -e "${yellow}--- Pulling Tezedge Docker image${endColor}"
echo

chmod +x ./libs/*
sudo docker pull ${TEZEDGE_IMAGE}

echo
echo -e "${yellow}--- Creating folders for permanent storage${endColor}"
echo

# Creating folders for permanent storage of Docker volumes
sudo mkdir -p ${TEZOS_PATH}/tezedge
sudo chmod 777 ${TEZOS_PATH}/tezedge

./libs/get-snapshot.sh

echo
echo -e "${yellow}--- Running Docker Tezos container${endColor}"
echo

sudo docker-compose up -d
