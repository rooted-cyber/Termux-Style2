#!/bin/sh
x='\033[1;92m'
y='\033[1;93m'
z='\033[1;94m'
aa='\033[1;95m'
bb='\033[1;96m'

apt update
apt upgrade
pkg install screenfetch
pkg install toilet
pkg install figlet
clear
echo "$aa Welcome to change Termux style $bb"
toilet -f standard -F border -F gay Termux
toilet -f standard -F border -F gay Stylish
sleep 5
echo " "
echo " "
echo "$x Ab change ho rha hai $y"
sleep 1
echo " "
echo " "
echo "$y Changing.......... $y"
sleep 1
rm -f /data/data/com.termux/files/usr/bin/login
rm -f /data/data/com.termux/files/usr/etc/bash.bashrc
rm -f /data/data/com.termux/files/usr/etc/motd
cp -f login /data/data/com.termux/files/usr/bin/login
cp -f bash.bashrc /data/data/com.termux/files/usr/etc/bash.bashrc
cp -f motd /data/data/com.termux/files/usr/etc/motd
cp -f color /data/data/com.termux/files/usr/bin/color
cp -f github-link /data/data/com.termux/files/usr/bin/github-link
chmod 777 /data/data/com.termux/files/usr/bin/login
chmod 777 /data/data/com.termux/files/usr/etc/bash.bashrc
chmod 777 /data/data/com.termux/files/usr/etc/motd
chmod 777 /data/data/com.termux/files/usr/bin/color
chmod 777 /data/data/com.termux/files/usr/bin/github-link
sleep 10
echo " "
clear
toilet -f standard -F gay Successfully
toilet -f standard -F gay Changed
echo " "
echo "$x Ab new session khol ke dekh sakte ho $x"
toilet -f standard -F gay Completed