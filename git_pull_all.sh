#!/bin/bash

#REPOS=`/Users/tobidae/Documents/Projects/`

REPOS="$( cd "$( /Users/tobidae/Documents/Projects/ )" && pwd )"

IFS=$'\n'
echo $REPOS
for GIT in `find $REPOS/ -name '*.git'`
do
    if [[ $GIT = *"node_modules"* ]]
	then
		echo "Skipping because it doesn't look like it has a .git folder."
    else
		echo "Updating $GIT at $(date)"
		cd "$GIT/"
        cd ..
		git status
		echo "Fetching"
		git fetch
		echo "Pulling"
		git pull
	fi
	echo "Done at $(date)"
	echo
done

