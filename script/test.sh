#!/bin/bash
root="/home/anirudh/Desktop/server"
echo $root
cd $root
echo -e '\e[1m\e[34mPulling code from remote..\e[0m\n'
git pull origin main
echo -e '\e[1m\e[34m\nremoving old node_modueles folder\e[0m\n'
rm -r -f node_modules 
echo -e '\e[1m\e[34m\nInstalling required packages..\e[0m\n'
npm install


echo -e '\e[1m\e[34m\nRestarting service..\e[0m\n'
# Replace 1 with the ID of the service running your application
node index.js
echo -e '\n\e[1m\e[34mDeployment successful\e[0m'
