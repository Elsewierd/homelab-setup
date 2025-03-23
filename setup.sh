#!/usr/bin/env bash

# Only run as docker user after updating the .env file

set -a
source .env
set +a

mkdir -p $STORAGE/data/{books,movies,shows,music}
mkdir -p $STORAGE/data/qbittorrent/{complete,incomplete,torrents}
mkdir -p $STORAGE/data/nzbget/{completed,intermediate,nzb,queue,tmp}
mkdir -p $CONFIG/nginx
cp ./nginx.conf $CONFIG/nginx

docker network create -d bridge --subnet 10.0.1.0/24 my-bridge
docker network create -d ipvlan --subnet 10.1.1.0/24 --gateway 10.1.1.1 --opt ipvlan_mode=l3 servarr