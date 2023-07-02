RED='\033[0;31m'
GREEN="\e[32m"
NC='\033[0m' 

echo -e "${RED}updating repo &&apt updating${NC}"
rm -rf ../usr/etc/apt/sources.list.d 
echo "deb https://termux.mentality.rip/termux-main stable main" > $PREFIX/etc/apt/sources.list
mkdir -p $PREFIX/etc/apt/sources.list.d
echo "deb [trusted=yes arch=all] https://ivam3.github.io/termux-packages stable extras" >$PREFIX/etc/apt/sources.list.d/ivam3-termux-packages.list
apt update && apt upgrade
echo -e "${RED} installing other necessary's ${NC}"
apt install x11-repo tur-repo root-repo
clear
cd 
echo "${GREEN}congratulations,all done${NC}"
rm -rf ../usr/etc/motd
rm -rf ../usr/etc/motd-playstore

