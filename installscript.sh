#!/bin/bash
echo -e "[SETUP] Install packages"
apt-get update -qq > /dev/null 2>&1 && apt-get install -qq > /dev/null 2>&1 -y git wget
cd /mnt/server

echo -e "[SETUP] Copy Github files"
git clone https://github.com/scharez/ptero-directus-egg.git ./gtemp > /dev/null 2>&1

echo -e "[SETUP] Copy files"
cp -r ./gtemp/db .
cp -r ./gtemp/uploads .
cp -r ./gtemp/extensions .
cp -r ./gtemp/scripts .

if [ -f package.json ]
then
    cp -r ./gtemp/package.json .
fi

cp -r ./gtemp/.env .

if [ "${USE_SQLITE}" == "true" ] || [ "${USE_SQLITE}" == "1" ]
then
    cp -r ./gtemp/db.sqlite .
fi

cp ./gtemp/start.sh . && rm -R ./gtemp
chmod +x start.sh
echo -e "[HINT] Edit the .env file further configurtion (db-config)"
echo -e "[DONE] Everything has been installed"