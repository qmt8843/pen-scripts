#!/bin/zsh

git clone https://github.com/PowerShellMafia/PowerSploit.git
addr=`/sbin/iconfig eth0 | grep "inet " | cut -d: -f2 | awk '{print $2}'`
echo $addr

git clone https://github.com/samratashok/ADModule

python3 -m http.server 8080