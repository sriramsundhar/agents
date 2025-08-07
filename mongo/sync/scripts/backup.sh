#!/bin/sh
set -x

# Get all collections we want to backup
for collectionName in `find collectionQueries -iname "*.json" | sed "s/.*\///; s/\.json//"`
do
    echo "Backup $collectionName Collection"
    docker run --rm \
        -v $PWD/collectionQueries:/tmp/collectionQueries \
        -v $PWD/mongoLocal:/tmp/mongoLocal \
        mongo:8 mongodump \
            -v \
            --uri="mongodb+srv://$MONGO_DB_USER_NAME:$MONGO_DB_PASSWORD@$MONGO_HOST_NAME/dw" \
            --db dw \
            --username $MONGO_DB_USER_NAME \
            --password $MONGO_DB_PASSWORD \
            --authenticationDatabase admin \
            --collection $collectionName \
            --out "/tmp/mongoLocal" \
            --queryFile="/tmp/collectionQueries/${collectionName}.json"
done
