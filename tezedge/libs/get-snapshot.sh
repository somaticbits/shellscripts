#!/bin/bash

source ./libs/colors.sh
source ./libs/config.sh

echo
echo -e "${yellow}--- Pulling latest snapshot${endColor}"
echo

SNAPSHOT=$(curl -s http://snapshots.tezedge.com:8880/mainnet/irmin/full/ | jq  '.[2].name' | xargs)

if [ ! -e "${TEZOS_PATH}"/tezedge/"${SNAPSHOT}" ]; then
  # Download latest Tezedge snapshot
  sudo curl -l "${TEZEDGE_SNAPSHOTS_URL}""${SNAPSHOT}" -o "${TEZOS_PATH}"/tezedge/"${SNAPSHOT}"
else
  echo
  echo -e "${green}✓ Snapshot already pulled!${endColor}"
  echo
fi
