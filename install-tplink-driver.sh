#!/bin/bash
set -e

echo "[+] Updating system..."
sudo apt update
sudo apt install -y build-essential dkms git

echo "[+] Removing old driver (if exists)..."
sudo dkms remove 8812au/5.6.4.2_35491.20191025 --all || true

echo "[+] Cloning rtl8812au driver repo..."
rm -rf ~/rtl8812au
git clone https://github.com/aircrack-ng/rtl8812au.git ~/rtl8812au

echo "[+] Installing driver with DKMS..."
cd ~/rtl8812au
sudo make dkms_install

echo "[+] Driver installed successfully. Please reboot."

