#!/bin/bash
sudo mkdir /etc/atomfetch/
sudo mv info.txt /etc/atomfetch/
sudo cp config.txt /etc/atomfetch/
sudo chmod +x ./atomfetch
sudo mv ./atomfetch /bin/atomfetch
echo "Finished Installing AtomFetch, Try it with atomfetch --name carbon"