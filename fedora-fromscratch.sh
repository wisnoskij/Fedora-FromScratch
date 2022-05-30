#!/bin/bash

#minimal Networking, standard, (guest, but dont install that on metal)
name="fedora-fromscratch"

sudo dnf update

if [ ! -f "$name.sh" ]; then
	cd ~
	sudo dnf install git
	git clone "https://github.com/wisnoskij/$name.git"
	cd $name
fi

"./$name.sh"
