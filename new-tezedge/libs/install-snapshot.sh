#!/bin/bash

source ./libs/colors.sh
source ./libs/config.sh

echo
echo -e "${yellow}--- Importing latest snapshot${endColor}"
echo

docker run --rm -v ${TEZOS_PATH}/tezedge:/tmp/tezedge import-snapshot --from ${TEZOS_PATH}/snapshots/mainnet.full
