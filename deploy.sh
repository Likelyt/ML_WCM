#!/bin/bash

echo -e "\033[0;32mUpdates to GitHub of statistical learning...\033[0m"

git status

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

