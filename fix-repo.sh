RED='\033[0;31m'

NC='\033[0m' 

echo -e "${RED}updating repo${NC}"
rm -rf ../usr/etc/apt/sources.list.d 
echo "deb https://termux.mentality.rip/termux-main stable main" > $PREFIX/etc/apt/sources.list
mkdir -p $PREFIX/etc/apt/sources.list.d
echo "deb [trusted=yes arch=all] https://ivam3.github.io/termux-packages stable extras" >$PREFIX/etc/apt/sources.list.d/ivam3-termux-packages.list
echo -e "${RED}apt updating${NC}"
pkg update 

