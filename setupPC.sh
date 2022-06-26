#!/bin/bash
## Install packages, drivers, and generate SSH
sudo apt-get update -y
sudo apt-get upgrade -y
#sudo apt-get install ubuntu-drivers
sudo add-apt-repository universe
sudo apt-get install vim -y
sudo apt install hardinfo -y
sudo apt install nginx -y
sudo apt-get install curl
# Snap Installs
sudo snap install discord
sudo snap install spotify
sudo snap install intellij-idea-community --classic
sudo snap install code --classic
## Install docker and grant permissions
sudo snap install docker -y

sudo groupadd docker
sudo usermod -aG docker $USER
sudo chown root:docker /var/run.docker.sock
sudo chown -R root:docker /var/run/docker
sudo apt-get install docker-compose -y

# Download All Repositories
cd $REPOS 
git clone git@github.com:EliotKhachi/publicZk.git
git clone git@github.com:EliotKhachi/freecad-mybranch.git
git clone git@github.com:EliotKhachi/Leetcode.git
git clone git@github.com:EliotKhachi/privateZk.git
git clone git@github.com:EliotKhachi/gravity-game.git
git clone git@gitlab.com:michaelarn0ld/java-web-course.git
git clone git@gitlab.com:michaelarn0ld/java-commander.git
# Build FreeCAD
cd $REPOS/bash-scripts/buildFreeCAD
#sh ./* # build all freecad dockers
sh Ubuntu-0.20.sh
