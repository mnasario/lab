#!/usr/bin/env sh

creatingNewConflict()
{
    git checkout $1
    git pull
    sleep 1
    echo "New line to $1" >> README.md
    git commit -am "Creating new conflict"
    git push
}

echo "Adding a new conflict in DEV"
creatingNewConflict dev

echo "Adding a new conflict in TEST CONFLICT branch"
creatingNewConflict test-with-conflict