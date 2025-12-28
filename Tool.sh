#!/usr/bin/env bash
###################################################
R='\e[1;31m'   # الأحمر (Red)
G='\e[1;32m'   # الأخضر (Green)
Y='\e[1;33m'   # الأصفر (Yellow)
B='\e[1;34m'   # الأزرق (Blue)
P='\e[1;35m'   # الأرجواني (Purple)
C='\e[1;36m'   # السماوي (Cyan)
W='\e[1;37m'   # الأبيض (White)
TEXT='\e[1;37m' #text
NC='\e[0m'

###################################################
test1 ( ) {
clear
echo -e "${G}##################################${NC}"
echo -e "${G}######${NC}${R} Welcome to my tool ${NC}${G}########${NC} "
echo -e "${G}###${NC}${R} i'm engineer osama elsayed ${NC}${G}###${NC}"
echo -e "${G}##################################${NC}"
echo ""
sleep 1
echo -e "${G}note${NC}:${R}More options will be added to the tool soon${NC}"
sleep 1
echo ""
}
test1
test2 ( ) {
while true; do
echo -e "${C}  ___  ${G} __   __"
echo -e "${C} / __| ${G} \ \ / /"
echo -e "${C}| (__  ${G}  \ V / "
echo -e "${C} \___| ${G}   \_/  "

echo ""

echo -e "${TEXT}logo: ${P}codevirus${NC}"
echo ""
sleep 1
echo -e "[ 1 ] » ${C}Download everything you need for Termux..!${NC}"
sleep 1
echo -e "[ 2 ] » ${C}To update and upgrade Termux..!${NC}"
sleep 1
echo -e "[ 3 ] » ${C}To display information about the owner of the tool${NC}"
sleep 1
echo -e "[ 4 ] » ${C}Play with Bash the Christmas game.!${NC}"
sleep 1
echo -e "[ 5 ] » ${C}Download any video from the internet using the video link.${NC}"
sleep 1
echo -e "[ 0 ] » ${C}To exit the tool..!${NC}"
sleep 1
echo ""
sleep 2

echo -e -n "${R}Enter the number!${R}: "
read num
if [ "$num" == "1" ]; then
pkg install python -y
pkg install wget curl -y
pkg install nano -y
pkg install git -y
pkg install pip -y
pkg install php -y
sleep 1
echo ""
echo -e "${G}Downloaded${NC}✅"
echo ""
echo -e "${G}Home tools will be updated....${NC}"
sleep 1
clear
pkg update -y && pkg upgrade -y
echo ""
sleep 1
echo -e "${G}Done${NC}✅"
echo ""
sleep 2
clear

elif [ "$num" == "2" ]; then
echo "In progress..."
sleep 1
clear
pkg update -y && pkg upgrade -y
echo ""
sleep 1
echo -e "${G}Done${NC}✅"
echo ""
sleep 2

clear


elif [ "$num" == "3" ]; then
echo ""
sleep 1
echo -e "${G}Tool developer: Engineer Osama${NC}"
sleep 3
echo ""
clear
elif [ "$num" == "4" ]; then
sleep 1
echo -e "${G}Welcome${NC}"
sleep 1
echo -e "${G}Let's play${NC}"
sleep 1
echo -e "${G}I will tell you your birth year at the end of the game${NC}"
sleep 1
echo -e "${G}85. Subtract your age from that and tell me how much is ${NC}"

sleep 1
echo -e -n "${B}Fadel Kam?${NC}: "
read num2

natg=$(($num2 + 1940))
sleep 1
echo -e "${G}Your birth year:${NC}${R}$natg${NC}"
sleep 3
clear


elif [ "$num" == "5" ]; then
    pip install yt-dlp rich &> /dev/null
    python downloader.py
    echo -e "\n${G}Returning to main menu...${NC}"
    sleep 3
    test2 


elif [ "$num" == "0" ]; then
echo ""
sleep 2
echo -e "${G}Done, Bey 👋${NC}✅"
echo ""
sleep 1

exit



else

echo -e "${R}incorrect، try again..${NC}"
echo ""
fi
done

}

test2
