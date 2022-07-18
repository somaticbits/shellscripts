echo
echo -e "${yellow}--- Pulling latest snapshot${endColor}"
echo

if [ ! -e "${TEZOS_PATH}"/snapshots/mainnet.full ]; then
  mkdir -p "${TEZOS_PATH}"/snapshots
  # Download latest Tezedge snapshot
  SNAPSHOT_URL=$(curl -s http://snapshots.tezedge.com:8880/mainnet/irmin/full/ | jq  '.[2].name' | xargs)
  curl -l "${SNAPSHOTS_TEZEDGE_URL}""${SNAPSHOT_URL}" -o "${TEZOS_PATH}"/snapshots/mainnet.full
else
  echo
  echo -e "${green}✓ Snapshot already pulled!${endColor}"
  echo
fi
