#!/bin/bash

sudo echo "nameserver 8.8.8.8" > /etc/resolv.conf
sudo apt update
sudo apt upgrade -y
sudo apt install -y python python-apt
