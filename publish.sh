#!/bin/bash
if [ $# -ne 1 ]
  then
    echo "Please supply a commit message so that the push script can run."
    exit
fi

MESSAGE=$1

git add docs/
git commit -am "$MESSAGE"
git push

mkdocs gh-deploy
