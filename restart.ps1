#!/bin/bash

docker network create -d bridge --subnet 172.19.0.0/16 --gateway 172.19.16.1 zabbix-grafana

cd ./zabbix 
docker-compose down -v
docker-compose up -d --force-recreate
cd ../grafana
docker-compose down -v
docker-compose up -d --force-recreate
cd ../