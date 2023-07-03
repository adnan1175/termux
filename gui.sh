wget https://raw.githubusercontent.com/adnan1175/termux/main/xfce4.sh
wget https://raw.githubusercontent.com/adnan1175/termux/main/openbox.sh
clear
echo "1 - install termux desktop xfce4"
echo "2 - install termux desktop opnebox"
echo "3 - Exit"
echo "Please choose one of the following options:" &&read choice

case $choice in
    1) bash xfce4.sh;;
    2) bash openbox.sh;;
    3) exit;;
    *) echo -e "${r}Invalid option${w}";;

   esac