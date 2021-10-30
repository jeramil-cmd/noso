#!/usr/bin/env bash

# #########################################
# 
# Please update POOL, WALLET, and CPU below
# 
# #########################################

# Valid Pools:
#   devnoso
#   dukedog.io
#   mining.moe
#   russiapool
#   yzpool

# TODO: Check ENVs for pool/wallet/cpu
#
# Example values:
# POOL=devnoso
# WALLET=N3nCJEtfWSB77HHv2tFdKGL7onevyDg
# CPU=4

POOL=dukedog.io
WALLET=NAHytedr8tvEbGNwuMEoFeShFYUAFK
CPU=4

# #########################################
# 
# No user editable code below
# 
# #########################################

while true; do
  ./noso-go mine pool \
    "${POOL:?Variable not set or is empty}" \
    --wallet "${WALLET:?Variable not set or is empty}" \
    --cpu ${CPU:?Variable not set or is empty}

  if [ "$?" != "0" ]; then
      exit 1
  fi
done
