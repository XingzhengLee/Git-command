#!/bin/bash

############################## initialization ##############################
# initialize local repository
git init

# set signature
# (project level) high priority
git config user.name [user name]
git config user.email [user email]
# (system level)
git config --global user.name [user name]
git config --global user.email [user email]

############################## basic ##############################
#  status
git status

# stage
git add [file name]
git add [file nanme1] [file name2] ...
git add .

# unstage
git rm --cached [file name]

# commit
git commit -m 'commit message' [file name]

############################## history ##############################
# log
git log
git log --pretty=oneline
git log --oneline
git reflog

# history
git reset --hard [hash value]
# back
git reset --hard HEAD^
git reset --hard HEAD~[number]
# move HEAD
--soft
# move HEAD
# reset stage
--mixed
# move HEAD
# reset stage
# reset working area
--hard

# comparison
# (default) working area vs. stage
git diff [file name]
# working area vs. local repository (history)
git dfff HEAD [file name]
# every files in working area
git diff

############################## branch ##############################
# view branch
git branch -v

# create branch
git branch [branch name]

# switch branch
git checkout [branch name]

# merge branch (move to master/branch)
git merge [branch name]

# conflict (without [file name])
git add [file name]
git commit -m 'commit message'

# remove brach
git brance -d [branch name]

############################## GitHub ##############################
# remote
# remote view
git remote -v
# remote add
git remote add [remote repository adress alias] [remote address]
# example
git remote add origin [remote address]

# push
git push [remote repository adress alias] [branch name]
# example
git push origin master

# clone
# create origin alias
# initiate local repository
git clone [remote address]

# fetch
git fetch [remote repository adress alias] [branch name]
# example
git fetch origin master

# checkout
git checkout [remote repository adress alias]/[branch name]
# example
git checkout origin/master

# merge
git merge [remote repository adress alias]/[branch name]
# example
git merge origin/master

# pull = fetch + merge
git pull [remote repository adress alias] [branch name]
git pull origin master

# ssh (home directory)
ssh-keygen -t rsa -C [user email]
# copy .ssh/id_rsa.pub to [SSH and GPG keys]

############################## ignore ##############################
# create .gitignore
# /mtk/
# *.zip
# /mtk/doc
# !index.php
