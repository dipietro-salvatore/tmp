#!/bin/bash

echo "Hello World!"

echo "VPN - wg0"
sudo systemctl enable wg-quick@wg0
sudo systemctl start wg-quick@wg0

echo "VPN - wg1"
sudo systemctl enable wg-quick@wg1
sudo systemctl start wg-quick@wg1


echo "Install Chrome Remote Desktop"
cd /tmp
sudo apt update
sudo apt install -y wget 

wget -O /tmp/chrome-remote-desktop_current_amd64.deb   https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install -y /tmp/chrome-remote-desktop_current_amd64.deb
sudo apt install -f

echo "Run Chrome Remote Desktop"
DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="4/0AQSTgQHD-gMzUrs23jBKXaeuxB2FKqpUDMgJZJ0-yVJmXnX7Ha83Zg5dHpXmkWNrfcB3rg" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname)

