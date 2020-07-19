#!/bin/bash

# INSTALL DEPENDENCIES

logo() {
clear
echo ""
echo -e "\e[34m          █████╗ ██╗     ██╗            ██╗███╗   ██╗               "           
echo -e "\e[34m         ██╔══██╗██║     ██║            ██║████╗  ██║               " 
echo -e "\e[34m         ███████║██║     ██║     █████╗ ██║██╔██╗ ██║               "
echo -e "\e[34m         ██╔══██║██║     ██║     ╚════╝ ██║██║╚██╗██║               "
echo -e "\e[34m         ██║  ██║███████╗███████╗       ██║██║ ╚████║               "
echo -e "\e[34m         ╚═╝  ╚═╝╚══════╝╚══════╝       ╚═╝╚═╝  ╚═══╝               "
echo -e "\e[34m               ███╗   ███╗███████╗████████╗ █████╗                  " 
echo -e "\e[34m               ████╗ ████║██╔════╝╚══██╔══╝██╔══██╗                 "
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

# Termux installation
itermux() {
    logo
    echo ""
    pkg install exiftool
    echo ""
    clear
    logo
    echo "Intallation complete."
}

# Linux installation
ilinux() {
    logo
    echo ""
    sudo apt install exiftool
    echo ""
    clear
    logo
    echo "Intallation complete."
}

# Abort install
abort() {
    clear
    sleep 1
    exit
}

main() {
    logo
    echo "  [01] Install in Termux"
    echo "  [02] Install in Linux"
    echo "  [00] Abort "
    echo ""
    read -p "  Choose environment: " envi
    if [[ $envi == "01" || $envi == "1" ]]; then
    itermux
    elif [[ $envi == "02" || $envi == "2" ]]; then
    ilinux
    elif [[ $envi == "00" || $envi == "0" ]]; then
    abort
    fi
}

# Start here
main
