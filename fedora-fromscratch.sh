#!/bin/bash

#minimal Networking, standard, (guest, but dont install that on metal)
name="fedora-fromscratch"
prjpath="$HOME/$name"
function gitname {
	basename -s .git `git config --get remote.origin.url`
}

sudo dnf update
sudo dnf install git

if [ $name == gitname ]; then
	git pull
elif [ -d $prjpath ]; then
	cd $prjpath
	if [ $name == gitname ]; then
        	git pull
	else
		echo "ERROR: $prjpath already exists. Remove and run again."
		exit 1
	fi
else
	git clone "https://github.com/wisnoskij/$name.git" $prjpath
	cd $prjpath
fi

"./main.sh"
