#!/bin/bash

echo "You are about to use to GIT"

# Display all the changes to the project folder
git status

read -p "What are you trying to do (c/commit|p/push|*)?" actionAnswer

case "$actionAnswer" in
    c|commit )
        read -p "Are you satisfied with the changes (y/n)? " commitAnswer
        case "$commitAnswer" in
            y|Y )
                # About to commit the changes
                echo "What is the description that will go with the commit?"
                echo "Or you can leave it blank for a generic message"
                read message
                if [ -z "$message" ] then
                    message="Just a commit, nothing to see here!"
                fi
                git commit -m "$message"
            ;;
            n|N|* )
                # Didn't want to continue the commit
                echo "Ok cool, make your changes and commit them!"
                exit 1
            ;;
        esac
    ;;
    p|push )
        echo "Here's the status of your upstream branch"
        git log @{u}..

        read -p "Are you satisfied with the commits (y/n)? " pushAnswer
        case "$commitAnswer" in
            y|Y )
                # About to push to the remote
                echo "Note: Initially you will have to run 'git push -u origin branch_name' to set the upstream"
                git push
            ;;
            n|N|* )
                # Didn't want to continue the push
                echo "Ok cool, just remember to push!"
                exit 1
            ;;
        esac
    ;;
    * )
        echo "Option not set, exitting..."
        exit 1
    ;;
esac


