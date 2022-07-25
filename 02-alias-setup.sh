#!/usr/bin/env bash

########## Alias Setup ##########

ALIAS_PATH="$HOME/.bashrc.d"
FS_ALIAS="*.bashrc"

#Fedora's bashrc uses .bashrc.d folder for any additions
if [ ! -d $ALIAS_PATH ]; then
	mkdir $ALIAS_PATH
	chmod 711 $ALIAS_PATH
fi

chmod 711 $FS_ALIAS
cp $FS_ALIAS "$ALIAS_PATH/"

source ~/.bashrc
