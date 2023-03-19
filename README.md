#bash-scripts

This project is used to store and maintain all of my bash scripts. 

## setupPC
The `setupPC` script is intended to configure my computer's settings (for Ubuntu) such as setting up environment variables, installing packages, and downloading cloud backup files. This is helpful for instances when something breaks on my PC and I need to hard reset it (tends to happen when I cowboy my sudo privileges :) ), or if I need to quickly setup an entirely new PC to my original settings. 

## toemoji
A fun script for adding a repository of emojis to write in text files.  

## setJavaHome
Sets the JAVA\_HOME environment variable based on the currently configured java SDK version. Called in the .bashrc => export JAVA\_HOME="$(<path>/scripts/setJavaHome"
