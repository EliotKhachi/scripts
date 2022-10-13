#!/bin/bash
## Install packages, drivers, and generate SSH
sudo apt-get update -y
sudo apt-get upgrade -y
# sudo apt-get install ubuntu-drivers
sudo apt-get install virtualbox virtualbox-ext-pack -y
sudo add-apt-repository universe -y
sudo apt-get install vim -y
sudo apt install hardinfo -y
sudo apt install nginx -y
sudo apt-get install curl
sudo apt install openssh-server openssh-client -y
# Snap Installs
sudo apt-get install curl -y
sudp apt-get install nmap -y
## Snap Installs
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

## Make directory tree for repos
cd /home/$USER
mkdir -p Public/repos/{gitlab.com,github.com}/eliotkh12  

## Set-up .bashrc and .vimrc
git clone git@github.com:EliotKhachi/dotfiles.git
ln -sf dotfiles/bash_config/.bashrc .bashrc
source .bashrc


ln -sf dotfiles/vim_config/.vimrc .vimrc
rm -rf .vim && ln -s dotfiles/vim_config/.vim .vim
## Still need to add installation of vim plug-in manager and plug-ins 

# Download All Repositories
cd $REPOS 
git clone git@github.com:EliotKhachi/publicZk.git
git clone git@github.com:EliotKhachi/freecad-mybranch.git
git clone git@github.com:EliotKhachi/Leetcode.git
git clone git@github.com:EliotKhachi/privateZk.git
git clone git@github.com:EliotKhachi/gravity-game.git
git clone git@gitlab.com:michaelarn0ld/java-web-course.git
git clone git@gitlab.com:michaelarn0ld/java-commander.git
git clone git@github.com:EliotKhachi/zet.git
git clone git@github.com:EliotKhachi/eliotkhachi.com.git
git clone git@github.com:EliotKhachi/LaunchVehicleDesign.git
# Build FreeCAD
# cd $REPOS/bash-scripts/buildFreeCAD
# sh ./* # build all freecad dockers
# sh Ubuntu-0.20.sh
