#!/bin/bash

echo "Installing directus..."

#install node modules
if [ -f /home/container/package.json ]
then
/usr/local/bin/npm --prefix /home/container --max-old-space-size=512 install --quiet
fi

#run npm bootstrap
if [ -f /home/container/.env ]
then
/usr/local/bin/npm --prefix /home/container run bootstrap
fi

#run npm apply-snapshot
if [ -f /home/container/db/db-snapshot.yaml ]
then
/usr/local/bin/npm --prefix /home/container run apply-snapshot
fi

#run npm db-migrate-latest
/usr/local/bin/npm --prefix /home/container run db-migrate-latest

echo "Starting directus..."
/usr/local/bin/npm --prefix /home/container run start

echo "Directus successfully started"