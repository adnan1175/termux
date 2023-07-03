#!/bin/sh

#### author ####
 g="\033[1;32m" 
 r="\033[1;31m" 
 b="\033[1;34m" 
 w="\033[0m" 
 red='\e[1;31m' 
 default='\e[0m' 
 yellow='\e[0;33m' 
 orange='\e[38;5;166m' 
 green='\033[92m' 
 RED='\033[0;31m' 
 NC='\033[0m'  
 #### Adnan Akib ####
 
 echo -e "${RED}updating repo &&apt updating${NC}" 
 rm -rf ../usr/etc/apt/sources.list.d  
 echo "deb https://termux.mentality.rip/termux-main stable main" > $PREFIX/etc/apt/sources.list 
 mkdir -p $PREFIX/etc/apt/sources.list.d 
 echo "deb [trusted=yes arch=all] https://ivam3.github.io/termux-packages stable extras" >$PREFIX/etc/apt/sources.list.d/ivam3-termux-packages.list
clear 
 ping -c 1 google.com > /dev/null 2>&1 
 if [[ "$?" == 0 ]]; then 
 echo "" 
 echo -e "$green[+]-[Internet Connection]............[ True ]" 
 sleep 1.5 
 echo -e "$default" 
apt update && apt upgrade 
 echo -e "${RED} installing other necessary's ${NC}" 
 apt install x11-repo tur-repo root-repo 
 clear 
 echo -e "${RED}enabling extra keys${NC}" 
 cd  
 rm -rf ../usr/etc/motd 
 rm -rf ../usr/etc/motd-playstore 
 rm -rf /data/data/com.termux/cache 
 curl -O https://raw.githubusercontent.com/adnan1175/termux/main/.termux/termux.properties 
 rm -rf .termux 
 mkdir .termux 
 mv termux.properties .termux/
 echo -e "${RED}congratulations,all done${NC}" 
 
 else 
 echo "" 
 echo -e "$red[-]-[Internet Connection].........[ False ]" 
 echo -e "$default" 
 exit 
 exit 
 fi