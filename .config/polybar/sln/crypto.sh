#!/bin/bash

pair=$1

json=$(curl -s https://api.binance.com/api/v3/ticker/24hr | jq -r --arg pair "$pair" '.[] | select(.symbol==$pair)')
price=$(echo $json | jq -r '.lastPrice')
price=$(LANG=C printf "%.2f$" "$price")

echo "$pair $price"
