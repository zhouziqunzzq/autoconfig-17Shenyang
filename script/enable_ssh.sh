#!/bin/bash
# Creator: Bittersweet NEUACM
# Time:    2017/10/19 20:43

# Install openssh-server
dpkg -i ../deb/openssh-server/*

# Allow login only for root
cp -f ../etc/sshd_config /etc/ssh/sshd_config
systemctl restart ssh

echo "SSH enabled."
