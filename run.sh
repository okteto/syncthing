#!/bin/sh

set -e

if [ ! -z "$MARKER_PATH" ]
then
    echo "Creating marker file $MARKER_PATH ..."
    touch $MARKER_PATH
fi

syncthingHome=$(mktemp -d)
echo "Copying configuration files to $syncthingHome ..."

mkdir -p $syncthingHome
cp /var/syncthing/secret/* $syncthingHome

echo "Executing syncthing..." 
/bin/syncthing -home $syncthingHome -gui-address 0.0.0.0:8384
