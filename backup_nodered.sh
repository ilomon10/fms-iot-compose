#!/bin/bash
echo "Backing up Node Red config from $1";

flows_file=$(pwd)/data/node-red/flows.json
flows_cred_file=$(pwd)/data/node-red/flows_cred.json
package_file=$(pwd)/data/node-red/package.json

echo "Copy $flows_file";
docker cp $1:/data/flows.json $flows_file 

echo "Copy $flows_cred_file";
docker cp $1:/data/flows_cred.json $flows_cred_file

echo "Copy $package_file"
docker cp $1:/data/package.json $package_file
