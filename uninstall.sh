#!/data/data/com.termux/files/usr/bin/bash -e
cd /$HOME/.debrfs
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Uninstaller/Debian/UNI-debian.sh && bash UNI-debian.sh
cd /$HOME
rm -rf .debrfs
rm /data/data/com.termux/files/usr/bin/onionshare
echo "Sucessfully Uninstalled"
