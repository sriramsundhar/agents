#!/bin/sh
set -x
for collectionName in `find /tmp/dw -iname "*.bson"`
do
    echo "Restore $collectionName Collection"
    mongorestore \
        --username $MONGO_INITDB_ROOT_USERNAME \
        --password $MONGO_INITDB_ROOT_PASSWORD \
        --authenticationDatabase admin \
        -d dw "$collectionName"
done
