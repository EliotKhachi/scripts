#!/bin/bash
(( BASH_VERSINFO[0] < 4 )) && echo "Bash 4+ required." && exit 1
# Build FreeCAD docker container
cd $REPOS/github.com/eliotkh12/FreeCAD
git switch mybranch
cd project-source/tools/build/Ubuntu-0.20
touch xauth_list
xauth list | sed '2,2d' | sed "s/:/$DISPLAY/" > xauth_list
docker-compose build
rm xauth_list
