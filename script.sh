#!/bin/bash

echo "Hello World!"

echo "VPN - wg0"
sudo systemctl enable wg-quick@wg0
sudo systemctl start wg-quick@wg0
sudo systemctl status wg-quick@wg0

echo "VPN - wg1"
sudo systemctl enable wg-quick@wg1
sudo systemctl start wg-quick@wg1
sudo systemctl status wg-quick@wg1


# echo "Install Chrome Remote Desktop"
# cd /tmp
# sudo apt update
# sudo apt install -y wget 

# wget -O /tmp/chrome-remote-desktop_current_amd64.deb   https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
# sudo apt install -y /tmp/chrome-remote-desktop_current_amd64.deb
# sudo apt install -f

# echo "Run Chrome Remote Desktop"
# DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="..." --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname)

echo "Install Teamviewer"
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install -y -f ./teamviewer_amd64.deb
echo "Start Teamviewer"
teamviewer
