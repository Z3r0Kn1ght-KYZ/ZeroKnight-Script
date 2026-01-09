#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "Error: This script must be run as root."
   exit 1
fi

echo "Installing Z3r0Kn1ght - Script..."

MENU_URL="https://raw.githubusercontent.com/Z3r0Kn1ght-KYZ/ZeroKnight-Script/refs/heads/main/menu.sh"

wget -q -O /usr/local/bin/menu "$MENU_URL"
chmod +x /usr/local/bin/menu

/usr/local/bin/menu --install-setup

echo "Installation complete! Type 'menu' to start."
