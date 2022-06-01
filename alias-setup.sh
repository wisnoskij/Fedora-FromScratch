#!/bin/bash

########## Alias Setup ##########

ALIASPATH="$HOME/.bashrc.d"

#Fedora's bashrc uses .bashrc.d folder for any additions
if [ ! -d $ALIASPATH ]; then
	mkdir $ALIASPATH
fi

#create file if needed and set to xrw,xr,xr i guess

cat <<TST >> greetings.txt
line 1
line 2
line 3
TST
