#!/bin/bash

git add .

read -p "Commit message: " commitmsg
git commit -m "$commitmsg"

echo "Available branches:"
git branch 
read -p "Push to which branch? " branches
git push origin "$branches"
