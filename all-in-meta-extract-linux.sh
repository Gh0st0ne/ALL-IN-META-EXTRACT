#!/bin/bash

# Simple logo hahahaha
logo() {
clear
echo ""
echo -e "\e[34m          █████╗ ██╗     ██╗            ██╗███╗   ██╗               "           
echo -e "\e[34m         ██╔══██╗██║     ██║            ██║████╗  ██║               " 
echo -e "\e[34m         ███████║██║     ██║     █████╗ ██║██╔██╗ ██║               "
echo -e "\e[34m         ██╔══██║██║     ██║     ╚════╝ ██║██║╚██╗██║               "
echo -e "\e[34m         ██║  ██║███████╗███████╗       ██║██║ ╚████║               "
echo -e "\e[34m         ╚═╝  ╚═╝╚══════╝╚══════╝       ╚═╝╚═╝  ╚═══╝               "
echo -e "\e[34m               ███╗   ███╗███████╗████████╗ █████╗  \e[7m\e[31m\e[5m   THIS TOOL IS   \e[25m\e[27m" 
echo -e "\e[34m               ████╗ ████║██╔════╝╚══██╔══╝██╔══██╗ \e[7m\e[31m\e[5m FOR LINUX USERS  \e[25m\e[27m"
echo -e "\e[34m               ██╔████╔██║█████╗     ██║   ███████║                 "
echo -e "\e[34m               ██║╚██╔╝██║██╔══╝     ██║   ██╔══██║                 "
echo -e "\e[34m               ██║ ╚═╝ ██║███████╗   ██║   ██║  ██║                 "
echo -e "\e[34m               ╚═╝     ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝                 "                                                             
echo -e "\e[34m      ███████╗██╗  ██╗████████╗██████╗  █████╗  ██████╗████████╗    "
echo -e "\e[34m      ██╔════╝╚██╗██╔╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝╚══██╔══╝    "
echo -e "\e[34m      █████╗   ╚███╔╝    ██║   ██████╔╝███████║██║        ██║       "
echo -e "\e[34m      ██╔══╝   ██╔██╗    ██║   ██╔══██╗██╔══██║██║        ██║       "
echo -e "\e[34m      ███████╗██╔╝ ██╗   ██║   ██║  ██║██║  ██║╚██████╗   ██║       "
echo -e "\e[34m      ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝   ╚═╝       "
echo -e "\e[93m           CODED BY: JAYSON CABRILLAS SAN BUENAVENTURA"
echo -e "\e[32m"
}

# Information
info() {
    echo "ExifTool is a free and open source software program which is used to read, write and update"
    echo "metadata of various types of files such as PDF, Audio, Video and images. "
    echo "It is platform independent, available as a perl library as well as a command line application. "
    echo "Metadata can be described as information about the data such as file size, date created, file type, etc. "
    echo "ExifTool is very easy to use and gives a lot of information about the data. In this blog we will "
    echo "discuss different ways in which ExifTool can be used."
}

# Main function
main() {
    logo
    echo -e "  [01] Image metadata extractor"
    echo -e "  [02] File metadata extractor" 
    echo -e "  [03] Information"
    echo -e "  [00] Exit"
    echo ""
    read -p "  Choose a number: " choose
    if [[ $choose == "01" || $choose == "1" ]]; then
    logo
    echo ""
    read -p "Enter image path: " image
    exiftool $image
    elif [[$choose == "02" || $choose == "2" ]]; then
    logo
    echo ""
    read -p "Enter file path: " file
    exiftool $file
    elif [[ $choose == "03" || $choose = "3" ]]; then
    logo
    echo ""
    info
    sleep 5
    main
    elif [[ $choose == "00" || $choose == "0" ]]; then
    logo
    read -p "Do you really want to ext? (Y/n): " quit
    if [[ $quit == "Y" || $quit == "y" ]]; then
    clear
    exit
    else
    main
    fi
    fi
}

# Start here
main
