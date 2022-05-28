#!/bin/bash

#minimal Networking, standard, (guest, but dont install that on metal)

sudo dnf upgrade

mkdir build
cd build

../git-setup.sh

sudo setenforce Permissive

../greetd-setup.sh
