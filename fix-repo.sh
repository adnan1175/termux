echo "updating repo"
rm -rf ../usr/etc/apt/sources.list.d 
echo "deb https://termux.mentality.rip/termux-main stable main" > $PREFIX/etc/apt/sources.list
mkdir -p $PREFIX/etc/apt/sources.list.d
echo "deb [trusted=yes arch=all] https://ivam3.github.io/termux-packages stable extras" >$PREFIX/etc/apt/sources.list.d/ivam3-termux-packages.list
echo "apt updating"
apt update 
pkg update 
echo "installing necessary repo's "
apt install x11-repo tur-repo root-repo -y
