#!/bin/bash
echo "Migrating Node Red config to $1";

flows_file=$(pwd)/data/node-red/flows.json
flows_cred_file=$(pwd)/data/node-red/flows_cred.json
package_file=$(pwd)/data/node-red/package.json

echo "Copy $flows_file";
docker cp $flows_file $1:/data/flows.json

echo "Copy $flows_cred_file";
docker cp $flows_cred_file $1:/data/flows_cred.json

echo "Copy $package_file"
docker cp $package_file $1:/data/package.json
