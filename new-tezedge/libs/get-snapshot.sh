#!/bin/bash

source ./libs/colors.sh
source ./libs/config.sh

echo
echo -e "${yellow}--- Pulling latest snapshot${endColor}"
echo

if [ ! -e "${TEZOS_PATH}"/snapshots/mainnet.full ]; then
  sudo mkdir -p "${TEZOS_PATH}"/snapshots
  # Download latest Tezedge snapshot
  SNAPSHOT_URL=$(curl -s http://snapshots.tezedge.com:8880/mainnet/irmin/full/ | jq  '.[2].name' | xargs)
  sudo curl -l "${TEZEDGE_SNAPSHOTS_URL}""${SNAPSHOT_URL}" -o "${TEZOS_PATH}"/tezedge/mainnet.full
else
  echo
  echo -e "${green}✓ Snapshot already pulled!${endColor}"
  echo
fi
