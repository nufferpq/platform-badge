#!/usr/bin/env bash
# 
# Demo script to show creating and exercising a local git repository
# Script Dependencies:
#  git
#  The script should be run from a directory that contains something to be 
#   added to a git repository 
#  
# @author: Perry Nuffer

#create a git repo
git init

# add all existing files to the repo index
git add .

#commit all initial changes in the index to the git repo
git commit -a -m "Initial project commit"

# create a file called test.txt
echo "This is a test file in the git repo." > test.txt

# add test.txt to the git repo
git add test.txt

# commit the new test.txt file to the git repo
git commit -m "add test.txt file"

# modify the test.txt file, by appending some text.
echo "Add a second line of text." >> test.txt

# add latest changes to the git index and commit the new test.txt file to the git repo
git commit -a -m "add a second line of text to test.txt file"

# squash the last 2 commits into one (requires interactive editing)
#git rebase -i HEAD~2

# squash the last 2 commits into one (no interactive editing)
git reset --soft HEAD~2
git commit -m "add test.txt file with 2nd line."
