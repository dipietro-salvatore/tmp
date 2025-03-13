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
DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="4/0AQSTgQHBTZMISFT0Q1Cc51VjnMWmRrt2b9KfpHwc83i1dpbO-iR1dCbS22IkvwElY22O-A" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname)
