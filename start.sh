#!/bin/bash

echo "Installing directus"
/usr/local/bin/npm --prefix /home/container/directus install

/usr/local/bin/npm --prefix /home/container/directus run npx directus bootstrap && /usr/local/bin/npm --prefix /home/container/directus run npx directus schema apply db/db-snapshot.yaml --yes && /usr/local/bin/npm --prefix /home/container/directus run npx directus database migrate:latest && /usr/local/bin/npm --prefix /home/container/directus run npx directus start

echo "Directus successfully started"