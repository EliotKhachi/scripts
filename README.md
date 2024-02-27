#bash-scripts

This project is used to store and maintain all of my bash scripts. 

## pushHome
`pushHome.sh` pushes the local computer's home directory contents to a remote server's home directory (in this case a raspberry pi).  

## pullHome
`pullHome.sh` pulls the remote server's home directory contents into the local computer's home directory.  

## toemoji
A fun script for adding a repository of emojis to write in text files.  

## setJavaHome
Sets the JAVA\_HOME environment variable based on the currently configured java SDK version. Called in the .bashrc => export JAVA\_HOME="$(<path>/scripts/setJavaHome"
