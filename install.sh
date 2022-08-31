#!/bin/sh
sudo mv ./atomfetch.lua /bin/atomfetch
sudo chmod +x /bin/atomfetch
sudo mkdir /etc/atomfetch
sudo mv ./info.txt /etc/atomfetch
echo "Done installing AtomFetch! Try it with a \"atomfetch -name Carbon\""