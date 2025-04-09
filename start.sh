#!/bin/bash
echo "Starting iot-server"

./migrate_nodered.sh iot-service-node-red-1

GID=1000 UID=1000 docker compose up -d
