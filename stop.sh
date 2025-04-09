#!/bin/bash
echo "Stopping iot-server"

./backup_nodered.sh iot-service-node-red-1

docker compose down
