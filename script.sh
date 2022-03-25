#!/usr/bin/env bash

if [ $1 = 'node1' ]; then 
  initResult=$(vault operator init -format=json -key-shares=1 -key-threshold=1)
  echo $initResult | jq  > data.json
fi
