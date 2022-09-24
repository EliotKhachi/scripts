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

## Make directory tree for repos
cd /home
mkdir -p Public/repos/{gitlab.com,github.com}/eliotkh12  

## Set-up .bashrc and .vimrc
git clone git@github.com:EliotKhachi/dotfiles.git
rm .bashrc && ln -s dotfiles/bash_config/.bashrc .bashrc
source .bashrc
ln -s dotfiles/vim_config/.vimrc .vimrc
rm -rf .vim && ln -s dotfiles/vim_config/.vim .vim
rm .viminfo && ln -s dotfiles/vim_config/.viminfo .viminfo
source .vimrc
## Need to install vim plug-ins automatically

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
# Build FreeCAD
# cd $REPOS/bash-scripts/buildFreeCAD
# sh ./* # build all freecad dockers
# sh Ubuntu-0.20.sh
