#!/bin/bash
if ! type pm2 > /dev/null
then
    sudo npm install -g pm2 && pm2 start ./index.js --name node
else
    pm2 restart node
fi
