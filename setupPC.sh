#!/bin/bash
## Install packages, drivers, and generate SSH
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install ubuntu-drivers
sudo apt-get install vim

## Install docker and grant permissions
sudo snap install docker
sudo groupadd docker
sudo usermod -aG docker $USER
sudo chown root:docker /var/run.docker.sock
sudo chown -R root:docker /var/run/docker
sudo apt-get install docker-compose


## Re-write .bashrc and .bash_profile files
mv $HOME/dotfiles/.bashrc $HOME/.bashrc
mv $HOME/dotfiles/.bash_profile $HOME/.bash_profile
source $HOME/.bashrc
source $HOME/.bash_profile


# Download All Repositories
mkdir $HOME/Public/repos
cd $HOME/Public/repos
mkdir -p github.com/eliotkh12 gitlab.com/eliotkh12
cd $GITLAB_REPOS/eliotkh12
git clone git@gitlab.com:eliotkh12/mypubliczettelkasten.git
git clone git@gitlab.com:eliotkh12/myprivatezettelkasten.git
git clone git@gitlab.com:eliotkh12/freecad-project.git
git clone git@gitlab.com:eliotkh12/leetcode.git
git clone git@gitlab.com:eliotkh12/gravity-game.git
git clone git@gitlab.com:eliotkh12/javaprojects.git
git clone git@gitlab.com:eliotkh12/dotfiles.git
git clone git@gitlab.com:eliotkh12/bash-scripts.git

# Build FreeCAD
sh buildFreeCAD.sh
