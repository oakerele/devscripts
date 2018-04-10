#!/bin/bash

REPOS=/Users/tobidae/Documents/Projects

array=()
while IFS=  read -r -u3 -d $'\0' REPLY; do
    if [[ $REPLY = *"node_modules"* ]] || [[ $REPLY = *"buildroot"* ]]
	then
		echo "Skipping because it doesn't look like it has a .git folder."
    else
		echo "Updating $REPLY at $(date)"
		cd $REPLY
		# Go back one folder because it is currently in the .git folder 
        cd ..
		git status
		echo "Fetching"
		git fetch
		echo "Pulling"
		git pull
	fi
	echo "Done at $(date)"
	echo
done 3< <(find $REPOS -name '*.git' -print0)
