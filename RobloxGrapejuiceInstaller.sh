clear
sudo echo Installing a Roblox For Debian...
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y wget gpg
wget -O- https://gitlab.com/brinkervii/grapejuice/-/raw/master/ci_scripts/signing_keys/public_key.gpg | gpg --dearmor > /tmp/grapejuice-archive-keyring.gpg
sudo cp /tmp/grapejuice-archive-keyring.gpg /usr/share/keyrings/
rm /tmp/grapejuice-archive-keyring.gpg
sudo tee /etc/apt/sources.list.d/grapejuice.list <<< 'deb [signed-by=/usr/share/keyrings/grapejuice-archive-keyring.gpg] https://brinkervii.gitlab.io/grapejuice/repositories/debian/ universal main' > /dev/null
sudo apt update
sudo apt install -y grapejuice
sudo apt install p7zip-full
wget -O gjscript.py https://pastebin.com/raw/5SeVb005
grapejuice
python3 gjscript.py
sudo apt install wine
clear
echo Installed a Roblox/Grapejuice.
