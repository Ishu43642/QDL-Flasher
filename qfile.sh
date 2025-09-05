#!/bin/bash
trap "echo -e '\033[0;31m Script execution aborted. \033[0m'; exit 1" INT

# Function to prompt user before returning to main menu
return_to_menu() {
    echo -e "\033[1;33m╭───────────────────────────────────────────────╮\033[0m"
    echo -e "\033[1;33m│ \033[1;97m  Returning to main menu?                     \033[1;33m│\033[0m"
    echo -e "\033[1;33m╰───────────────────────────────────────────────╯\033[0m"
    
    read -p $'\033[1;36mGo to main menu? (y/n): \033[0m' choice
    if [[ "$choice" == "y" || "$choice" == "Y" || "$choice" == "yes" || "$choice" == "YES" ]]; then
        cd $home && cd qfile && ./qfile.sh
    else
        echo -e "\033[1;32m✓ Exiting program. Thank you for using Termux F220b Root Recovery Tool! \033[0m"
	echo -e "\033[1;33m╭───────────────────────────────────────────────╮\033[0m"
    echo -e "\033[1;33m│ \033[1;97m     Subscribe - Repair A2Z YouTube channel   \033[1;33m│\033[0m"
	echo -e "\033[1;33m╰───────────────────────────────────────────────╯\033[0m"
xdg-open https://youtube.com/@repaira2z
        exit 0
    fi
}

clear
echo -e "\033[1;36m
╔═══════════════════════════════════════════════╗
║\033[1;33m   ★ \033[1;37m    Termux Qfile Tool By Repair-A2Z  \033[1;33m ★\033[1;36m   ║
╠═══════════════════════════════════════════════╣
║  \033[1;95m            Flash Qualcomm Device \033[1;36m           ║
╚═══════════════════════════════════════════════╝
\033[0m"

echo -e "\033[1;35m╭───────────────────────────────────────────────╮\033[0m"
echo -e "\033[1;35m│\033[1;33m     Select - Termux Device Architecture       \033[1;35m│\033[0m"
echo -e "\033[1;35m╰───────────────────────────────────────────────╯\033[0m"

echo -e "\033[1;34m┌──────────────────────────────────────────────┐\033[0m"
echo -e "\033[1;34m│ \033[1;37m 1. \033[1;92m arm                                     \033[1;34m│\033[0m"
echo -e "\033[1;34m│ \033[1;37m 2. \033[1;92m arm64                                   \033[1;34m│\033[0m"
echo -e "\033[1;34m│ \033[1;37m 3. \033[1;92m x86                                     \033[1;34m│\033[0m"
echo -e "\033[1;34m│ \033[1;37m 4. \033[1;92m x86_64                                  \033[1;34m│\033[0m"
echo -e "\033[1;34m└──────────────────────────────────────────────┘\033[0m"

echo -e "\033[1;33m╭───────────────────────────────────────────────╮\033[0m"
echo -e "\033[1;33m│ \033[1;97mEnter your choice or press any key to exit    \033[1;33m│\033[0m"
echo -e "\033[1;33m╰───────────────────────────────────────────────╯\033[0m"

read -p $'\033[1;36mChoice: \033[0m' flasher

case $flasher in
  "1")

     echo -e "\033[1;36m╭───────────────────────────────────────────────╮\033[0m"
     echo -e "\033[1;36m│\033[1;33m   ⚡Flashing Emmc software               \033[1;36m│\033[0m"
     echo -e "\033[1;36m╰───────────────────────────────────────────────╯\033[0m"
     
cd arm
./qdl.sh

    return_to_menu
  ;;
  "2")
     echo -e "\033[1;36m╭───────────────────────────────────────────────╮\033[0m"
     echo -e "\033[1;36m│\033[1;33m   ⚡Flashing Emmc software               \033[1;36m│\033[0m"
     echo -e "\033[1;36m╰───────────────────────────────────────────────╯\033[0m"
     
cd arm64
./qdl.sh

    return_to_menu
  ;;
  "3")
    echo -e "\033[1;36m╭───────────────────────────────────────────────╮\033[0m"
     echo -e "\033[1;36m│\033[1;33m   ⚡Flashing Emmc software               \033[1;36m│\033[0m"
     echo -e "\033[1;36m╰───────────────────────────────────────────────╯\033[0m"
     
cd x86
./qdl.sh

    return_to_menu
  ;;
"4")
    echo -e "\033[1;36m╭───────────────────────────────────────────────╮\033[0m"
     echo -e "\033[1;36m│\033[1;33m   ⚡Flashing Emmc software               \033[1;36m│\033[0m"
     echo -e "\033[1;36m╰───────────────────────────────────────────────╯\033[0m"
     
cd x86_64
./qdl.sh

    return_to_menu
  ;;
  *)
    echo -e '\033[1;31m✗ Wrong key press please select correct. \033[0m';
    
read -p $'\033[1;36mDo You want to exit? (y/n): \033[0m' choice
    if [[ "$choice" == "y" || "$choice" == "Y" || "$choice" == "yes" || "$choice" == "YES" ]]; then
        echo -e "\033[1;32m✓ Exiting program. Thank you for using Termux F220b Root Recovery Tool! \033[0m"
	echo -e "\033[1;33m╭───────────────────────────────────────────────╮\033[0m"
    echo -e "\033[1;33m│ \033[1;97m     Subscribe - Repair A2Z YouTube channel   \033[1;33m│\033[0m"
	echo -e "\033[1;33m╰───────────────────────────────────────────────╯\033[0m"
xdg-open https://youtube.com/@repaira2z
        exit 0
    else
        ./qfile.sh
    fi

  ;;
esac

