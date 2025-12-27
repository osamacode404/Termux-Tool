#!/usr/bin/env bash
###################################################
R='\e[1;31m'   # الأحمر (Red)
G='\e[1;32m'   # الأخضر (Green)
Y='\e[1;33m'   # الأصفر (Yellow)
B='\e[1;34m'   # الأزرق (Blue)
P='\e[1;35m'   # الأرجواني (Purple)
C='\e[1;36m'   # السماوي (Cyan)
W='\e[1;37m'   # الأبيض (White)
NC='\e[0m'

###################################################
test1 ( ) {
while true; do
echo -e "${G}#####################################${NC}"
echo -e "${G}#########${NC}${R} Welcome to my tool ${NC}${G}########${NC} "
echo -e "${G}######${NC}${R} i'm engineer osama elsayed ${NC}${G}####${NC}"
echo -e "${G}#####################################${NC}"
echo ""
echo ""

echo -e "[ 1 ] ==>>${C}Download everything you need for Termux..!${NC}"
echo -e "[ 2 ] ==>>${C}To update and upgrade Termux..!${NC}"
echo -e "[ 3 ] ==>>${C}To display information about the owner of the tool..!${NC}"
echo -e "[ 4 ] ==>>${C}To exit the tool..!${NC}"
echo ""
echo -e -n "${R}Enter the number !${R}: "
read num
if [ "$num" == "1" ]; then
pkg install python -y
pkg install wget curl -y
pkg install nano -y
pkg install git -y
pkg install python-pip -y
pkg install php -y
sleep 1
echo ""
echo -e "${G}Downloaded ✅${NC}"
echo ""
echo -e "${G}Home tools will be updated....${NC}"
sleep 1
clear
pkg update -y && pkg upgrade -y
sleep 2
echo ""
echo ""
echo -e "${G}Done..✅${NC}"

sleep 2
clear

elif [ "$num" == "2" ]; then
sleep 1
echo "In progress..."
sleep 1
clear
pkg update -y && pkg upgrade -y
echo ""
echo -e "${G}Done..✅${NC}"
sleep 4

clear

elif [ "$num" == "3" ]; then
sleep 1
echo ""
echo -e "${G}Tool developer: Engineer Osama${NC}"
echo ""
sleep 2
echo ""
echo -e "${G}Done..✅${NC}"
sleep 4
clear


elif [ "$num" == "4" ]; then
sleep 1
echo -e "${R}The tool has been exited.Bey..${NC}"
sleep 2
exit



else
sleep 2
echo -e "${R}incorrect، try again..${NC}"
sleep 2


fi
done

}
test1
