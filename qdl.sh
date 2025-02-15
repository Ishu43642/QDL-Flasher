#!/bin/bash
trap "echo -e '\033[0;31m Script execution aborted. \033[0m'; exit 1" INT

echo -e "\033[0;33m
-----------------------------------------
   * Repair A2Z QDL Flashing *
-----------------------------------------
    Select Your Device Storage ?
-----------------------------------------
  1. Flash Emmc Device
  2. Flash UFS Device
  3. Check Usb Connection
  4. Fastboot to Edl (only for BL unlocked)
  5. Check Fastboot Device
------------------------------------------
(Press Any key to Exit or input your choice.)
\033[0m";

read -p "Choice: " flasher

case $flasher in
  "1")

     echo -e "\033[0;32m Please enter the fire-house file location. \033[0m";
    read -p "Enter the fire-house file path: " romname

    if [ ! -f "$romname" ]; then
        echo -e "\033[0;31m > $romname file is not found \033[0m";
        echo -e "\033[0;31m \033[3m Please ensure that '$romname' file exist and try again. Have a good day! \033[0m";
        exit 1;
    fi

echo -e "\033[0;32m Please enter the rawprogram file location. \033[0m";
    read -p "Enter the rawprogram path: " romnamer

    if [ ! -f "$romnamer" ]; then
        echo -e "\033[0;31m > $romnamer file is not found \033[0m";
        echo -e "\033[0;31m \033[3m Please ensure that '$romnamer' file exist and try again. Have a good day! \033[0m";
        exit 1;
    fi

echo -e "\033[0;32m Please enter the patch file location. \033[0m";
    read -p "Enter the patch file path: " romnamep

    if [ ! -f "$romnamep" ]; then
        echo -e "\033[0;31m > $romnamep file is not found \033[0m";
        echo -e "\033[0;31m \033[3m Please ensure that '$romnamep' folder exist and try again. Have a good day! \033[0m";
        exit 1;
    fi


    ./qdl --debug --storage emmc --include /storage/emulated/0/qdl-flash $romname $romnamer $romnamep

    if [ $? -eq 0 ]; then
      echo -e "\033[0;32m Operation Succeed \033[0m";
    fi

  
  ;;
  "2")

    echo -e "\033[0;32m Please enter the fire-house file location. \033[0m";
    read -p "Enter the fire-house file path: " romname

    if [ ! -f "$romname" ]; then
        echo -e "\033[0;31m > $romname file is not found \033[0m";
        echo -e "\033[0;31m \033[3m Please ensure that '$romname' file exist and try again. Have a good day! \033[0m";
        exit 1;
    fi

echo -e "\033[0;32m Please enter the rawprogram file location. \033[0m";
    read -p "Enter the rawprogram path: " romnamer

    if [ ! -f "$romnamer" ]; then
        echo -e "\033[0;31m > $romnamer file is not found \033[0m";
        echo -e "\033[0;31m \033[3m Please ensure that '$romnamer' file exist and try again. Have a good day! \033[0m";
        exit 1;
    fi

echo -e "\033[0;32m Please enter the patch file location. \033[0m";
    read -p "Enter the patch file path: " romnamep

    if [ ! -f "$romnamep" ]; then
        echo -e "\033[0;31m > $romnamep file is not found \033[0m";
        echo -e "\033[0;31m \033[3m Please ensure that '$romnamep' folder exist and try again. Have a good day! \033[0m";
        exit 1;
    fi


    ./qdl --debug --storage ufs --include /storage/emulated/0/qdl-flash $romname $romnamer $romnamep

    if [ $? -eq 0 ]; then
      echo -e "\033[0;32m Operation Succeed \033[0m";
    fi

  


  ;;
"3")
    
  echo -e "\033[0;32m checking connected device! \033[0m";
    termux-usb -l

  ;;
"4")
    
  echo -e "\033[0;32m Rebooting to edl mode! \033[0m";
    termux-fastboot oem edl

  ;;
"5")
    
  echo -e "\033[0;32m Chacking Fastboot Devices! \033[0m";
    termux-fastboot devices

  ;;
  *)
    echo -e '\033[0;31m Script execution aborted. \033[0m';
    exit 1
  ;;
esac

