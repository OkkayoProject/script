#!/bin/bash
#testExecute
RED='\e[1;31m'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
BLUE='\e[0;34m'
NC='\e[0m'
MYIP=$(wget -qO- https://icanhazip.com);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/OkkayoProject/access/main/key | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
clear
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear

#INSTALLING NEW SERVICE
clear
apt update
apt upgrade -y
apt-get install curl -y