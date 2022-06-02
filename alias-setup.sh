#!/bin/bash

########## Alias Setup ##########

ALIAS_PATH="$HOME/.bashrc.d"
GIT_ALIAS="$ALIAS_PATH/git-alias.sh"

#Fedora's bashrc uses .bashrc.d folder for any additions
if [ ! -d $ALIAS_PATH ]; then
	mkdir $ALIAS_PATH
fi

#Create file if needed and set to xrw,xr,xr i guess
if [ ! -d "$GIT_ALIAS" ]; then
else
	echo "$GIT_ALIAS already exists. Overwrite? [y/N]:"
fi
