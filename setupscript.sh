#!/bin/bash

# Virtualbox repos
#wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | rpm --import -
#wget https://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
#sudo cp virtualbox.repo /etc/yum.repos.d/

# RPMFUSION
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# upgrade all the installed packages
sudo dnf upgrade -y

# install packages
sudo dnf install -y vagrant chromium vim-enhanced akmod-nvidia

# PIP installs
# install ansible
pip3 install ansible

# turn on some services
sudo systemctl enable sshd
sudo systemctl start sshd
