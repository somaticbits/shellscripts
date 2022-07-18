#!/bin/bash

source ./libs/colors.sh
source ./libs/config.sh

echo
echo -e "${yellow}--- Importing latest snapshot${endColor}"
echo

LATEST_SNAPSHOT=$(curl -s http://snapshots.tezedge.com:8880/mainnet/irmin/full/ | jq  '.[2].name' | xargs)
sudo docker run --rm -v "${TEZOS_PATH}"/tezedge:/tmp/tezedge "${TEZEDGE_IMAGE}" import-snapshot --from "${TEZEDGE_SNAPSHOTS_URL}""${LATEST_SNAPSHOT}"
