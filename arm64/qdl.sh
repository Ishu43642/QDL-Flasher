#!/bin/bash
trap "echo -e '\033[0;31m Script execution aborted. \033[0m'; exit 1" INT

# Function to prompt user before returning to main menu
return_to_menu() {
    echo -e "\033[1;33m╭───────────────────────────────────────────────╮\033[0m"
    echo -e "\033[1;33m│ \033[1;97m  Returning to Qfile menu?                    \033[1;33m│\033[0m"
    echo -e "\033[1;33m╰───────────────────────────────────────────────╯\033[0m"
    
    read -p $'\033[1;36mGo to Qfile menu? (y/n): \033[0m' choice
    if [[ "$choice" == "y" || "$choice" == "Y" || "$choice" == "yes" || "$choice" == "YES" ]]; then
        ./qdl.sh
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
║\033[1;33m     ★ \033[1;37mTermux Qfile Tool By Repair-A2Z\033[1;33m ★\033[1;36m       ║
╠═══════════════════════════════════════════════╣
║  \033[1;95m        Flash Qualcomm Device   \033[1;36m             ║
╚═══════════════════════════════════════════════╝
\033[0m"

echo -e "\033[1;35m╭───────────────────────────────────────────────╮\033[0m"
echo -e "\033[1;35m│\033[1;33m          What would you like to do?           \033[1;35m│\033[0m"
echo -e "\033[1;35m╰───────────────────────────────────────────────╯\033[0m"

echo -e "\033[1;34m┌──────────────────────────────────────────────┐\033[0m"
echo -e "\033[1;34m│ \033[1;37m 1. \033[1;92m📀 Flash Emmc                            \033[1;34m│\033[0m"
echo -e "\033[1;34m│ \033[1;37m 2. \033[1;92m💿 Flash Ufs                             \033[1;34m│\033[0m"
echo -e "\033[1;34m│ \033[1;37m 3. \033[1;92m🔍 Check Adb Device                      \033[1;34m│\033[0m"
echo -e "\033[1;34m│ \033[1;37m 4. \033[1;92m🔍 Check 9008 Edl Device                 \033[1;34m│\033[0m"
echo -e "\033[1;34m│ \033[1;37m 5. \033[1;92m🔃 Fastboot To Edl \033[1;31m(BL Unlock Only)      \033[1;34m│\033[0m"
echo -e "\033[1;34m└──────────────────────────────────────────────┘\033[0m"

echo -e "\033[1;33m╭───────────────────────────────────────────────╮\033[0m"
echo -e "\033[1;33m│ \033[1;97mEnter your choice or press any key to exit    \033[1;33m│\033[0m"
echo -e "\033[1;33m╰───────────────────────────────────────────────╯\033[0m"

read -p $'\033[1;36mChoice: \033[0m' flasher

case $flasher in
  "1")

     echo -e "\033[1;36m╭───────────────────────────────────────────────╮\033[0m"
     echo -e "\033[1;36m│\033[1;33m   ⚡Flash File configuration menu             \033[1;36m│\033[0m"
     echo -e "\033[1;36m╰───────────────────────────────────────────────╯\033[0m"
     
     
echo -e "\033[0;32m Please enter the fire-house file location. \033[0m";
    read -p "Enter the fire-house file path: " romname

    if [ ! -f "$romname" ]; then
        echo -e "\033[0;31m > $romname file is not found \033[0m";
        echo -e "\033[0;31m \033[3m Please ensure that '$romname' file exist and try again. Have a good day! \033[0m";
        return_to_menu;
    fi

echo -e "\033[0;32m Please enter the rawprogram file location. \033[0m";
    read -p "Enter the rawprogram path: " romnamer

    if [ ! -f "$romnamer" ]; then
        echo -e "\033[0;31m > $romnamer file is not found \033[0m";
        echo -e "\033[0;31m \033[3m Please ensure that '$romnamer' file exist and try again. Have a good day! \033[0m";
        return_to_menu;
    fi

echo -e "\033[0;32m Please enter the patch file location. \033[0m";
    read -p "Enter the patch file path: " romnamep

    if [ ! -f "$romnamep" ]; then
        echo -e "\033[0;31m > $romnamep file is not found \033[0m";
        echo -e "\033[0;31m \033[3m Please ensure that '$romnamep' folder exist and try again. Have a good day! \033[0m";
        return_to_menu;
    fi


  sudo ./qdl --debug --storage emmc --include /storage/emulated/0/qdl-flash $romname $romnamer $romnamep

    
        if [ $? -eq 0 ]; then
      echo -e "\033[1;32m✓ Operation completed successfully! \033[0m";
    fi

    return_to_menu
  ;;
  "2")
     echo -e "\033[1;36m╭───────────────────────────────────────────────╮\033[0m"
     echo -e "\033[1;36m│\033[1;33m        ⚡ Ufs Flash File configuration        \033[1;36m│\033[0m"
     echo -e "\033[1;36m╰───────────────────────────────────────────────╯\033[0m"
     
     echo -e "\033[0;32m Please enter the fire-house file location. \033[0m";
    read -p "Enter the fire-house file path: " romname

    if [ ! -f "$romname" ]; then
        echo -e "\033[0;31m > $romname file is not found \033[0m";
        echo -e "\033[0;31m \033[3m Please ensure that '$romname' file exist and try again. Have a good day! \033[0m";
        return_to_menu;
    fi

echo -e "\033[0;32m Please enter the rawprogram file location. \033[0m";
    read -p "Enter the rawprogram path: " romnamer

    if [ ! -f "$romnamer" ]; then
        echo -e "\033[0;31m > $romnamer file is not found \033[0m";
        echo -e "\033[0;31m \033[3m Please ensure that '$romnamer' file exist and try again. Have a good day! \033[0m";
        return_to_menu;
    fi

echo -e "\033[0;32m Please enter the patch file location. \033[0m";
    read -p "Enter the patch file path: " romnamep

    if [ ! -f "$romnamep" ]; then
        echo -e "\033[0;31m > $romnamep file is not found \033[0m";
        echo -e "\033[0;31m \033[3m Please ensure that '$romnamep' folder exist and try again. Have a good day! \033[0m";
        return_to_menu;
    fi

     echo -e "\033[1;92m►⚡ Flashing softwere images. \033[0m";


   sudo ./qdl --debug --storage ufs --include /storage/emulated/0/qdl-flash $romname $romnamer $romnamep


    if [ $? -eq 0 ]; then
      echo -e "\033[1;32m✓ Operation completed successfully! \033[0m";
    fi

    return_to_menu

  ;;
  "3")
    echo -e "\033[1;36m╭───────────────────────────────────────────────╮\033[0m"
    echo -e "\033[1;36m│\033[1;33m           Check adb devices                   \033[1;36m│\033[0m"
    echo -e "\033[1;36m╰───────────────────────────────────────────────╯\033[0m"
    
    echo -e "\033[1;92m► Searching 🔍Adb Devices... \033[0m"
    termux-adb devices

    return_to_menu
  ;;
"4")
    echo -e "\033[1;36m╭───────────────────────────────────────────────╮\033[0m"
    echo -e "\033[1;36m│\033[1;33m            Check 9008 EDL Devices             \033[1;36m│\033[0m"
    echo -e "\033[1;36m╰───────────────────────────────────────────────╯\033[0m"
    
    echo -e "\033[1;33m🔍 Searching usb port... \033[0m"
    termux-usb -l

    if [ $? -eq 0 ]; then
      echo -e "\033[1;32m✓ Usb Devices List! \033[0m";
    fi

    return_to_menu
  ;;
"5")
    echo -e "\033[1;36m╭───────────────────────────────────────────────╮\033[0m"
    echo -e "\033[1;36m│\033[1;33m         Reboot Fastboot to Edl mode           \033[1;36m│\033[0m"
    echo -e "\033[1;36m╰───────────────────────────────────────────────╯\033[0m"
    
    echo -e "\033[1;33m🔃 Rebooting to edl mode... \033[0m"
    termux-fastboot oem edl

    if [ $? -eq 0 ]; then
      echo -e "\033[1;32m✓ Reboot successfully! \033[0m";
    fi

    return_to_menu
  ;;
  *)
    echo -e '\033[1;31m✗ Wrong key press please select correct. \033[0m';
    
read -p $'\033[1;36mDo You want to exit? (y/n): \033[0m' choice
    if [[ "$choice" == "y" || "$choice" == "Y" || "$choice" == "yes" || "$choice" == "YES" ]]; then
        echo -e "\033[1;32m✓ Exiting program. Thank you for using Termux Qfile Tool! \033[0m"
	echo -e "\033[1;33m╭───────────────────────────────────────────────╮\033[0m"
    echo -e "\033[1;33m│ \033[1;97m     Subscribe - Repair A2Z YouTube channel   \033[1;33m│\033[0m"
	echo -e "\033[1;33m╰───────────────────────────────────────────────╯\033[0m"
xdg-open https://youtube.com/@repaira2z
        exit 0
    else
        ./qdl.sh
    fi

  ;;
esac


