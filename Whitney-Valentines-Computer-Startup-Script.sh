#! usr/bin/bash

cd ~/Downloads
echo *****apt packages*****
sudo apt install audacity
sudo apt install calibre
sudo apt install guake
sudo apt install keepassx
sudo apt install lutris
sudo apt install protonvpn
sudo apt install steam
echo *****snap packages*****
sudo snap install telegram-desktop
echo *****debs*****
wget https://dl.discordapp.net/apps/linux/0.0.25/discord-0.0.25.deb
sudo apt install ./discord-0.0.25.deb
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb
sudo apt install ./dropbox_2020.03.04_amd64.deb
echo *****appimage for some awful reason*****
wget https://github.com/nextcloud/desktop/releases/download/v3.7.3/Nextcloud-3.7.3-x86_64.AppImage
sudo chmod a+x Nextcloud-3.7.3-x86_64.AppImage
./Nextcloud-3.7.3-x86_64.AppImage
echo *****keyboard*****
mkdir ~/Utilities/keyboard
cd ~/Utilities/keyboard
modprobe uinput
git clone https://github.com/JSubelj/g910-gkey-macro-support.git
cd g910-gkey-macro-support
sudo chmod +x installer.sh; sudo ./installer.sh
sudo cp /etc/g910-gkeys/config.json configDEFAULT.json
wget https://raw.githubusercontent.com/wgcj/newcomp/main/transferredconfigfile.json transferredconfigfile.json
cp transferredconfigfile.json /etc/g910-gkeys/config.json
echo ***** FFXIV *****
cd ~/Downloads
wget -0 ffxivinstallscript.json https://lutris.net/api/installers/final-fantasy-xiv-online-official?format=json
lutris -i ffxivinstallscript.json
echo *****wallpaper*****
cd ~/Downloads
wget https://i.imgur.com/snWTz2y.jpeg
echo *****display manual instructions*****
wget https://raw.githubusercontent.com/wgcj/newcomp/main/manual.txt
cat manual.txt

