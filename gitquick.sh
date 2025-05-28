#!/bin/bash

git add .

read -p "Commit message: " commitmsg
git commit -m "$commitmsg"

echo "Branches:"
git branch | sed 's/^/* /'
read -p "Push to which branch? " branches
git push origin "$branches"
