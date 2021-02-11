#!/data/data/com.termux/files/usr/bin/bash -e
pkg update -y
cd /$HOME
mkdir .debrfs
cd .debrfs
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Debian/debian.sh && bash debian.sh
cat <<EOF | ./start-debian.sh
apt update -y && apt upgrade -y
apt install onionshare -y
EOF
sed -i '20 s/^#//' start-debian.sh
echo "#!/data/data/com.termux/files/usr/bin/bash -e
echo onionshare $@ | bash /$HOME/.debrfs/start-debian.sh" > /data/data/com.termux/files/usr/bin/onionshare
chmod +x /data/data/com.termux/files/usr/bin/onionshare
echo
echo
echo "Onionshare is installed in your termux"
echo "usage: onionshare filename"
echo "example: onionshare /sdcard/oleander.jpg"
