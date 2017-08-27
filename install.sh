#!/bin/bash
installPath=/usr/local/bin
program=extractall

wget -O installer.sh https://raw.githubusercontent.com/stevenharradine/bashInstaller/master/installer.sh
source installer.sh
rm installer.sh
