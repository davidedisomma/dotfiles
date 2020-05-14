#!/usr/bin/bash

ST3=~/Library/Application\ Support/Sublime\ Text\ 3

echo $ST3
echo $ST3/Packages/User

rm -Rf $ST3/Packages/User
ln -s ~/.st3/Packages/User "$ST3"/Packages/User

rm -Rf $ST3/Installed\ Packages
ln -s ~/.st3/Installed\ Packages "$ST3"/Installed\ Packages
