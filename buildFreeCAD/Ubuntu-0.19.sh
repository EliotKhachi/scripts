#!/bin/bash
# Build FreeCAD docker container
cd $GITLAB_REPOS/eliotkh12/freecad-project/project-source/tools/build/Ubuntu-0.19
touch xauth_list
xauth list | sed '2,2d' | sed "s/:/$DISPLAY/" > xauth_list
docker-compose build
rm xauth_list
