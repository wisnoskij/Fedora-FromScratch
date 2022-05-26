#!/bin/bash

#minimal Networking, standard, (guest, but dont install that on metal)

sudo dnf upgrade

sudo dnf install git
mkdir build
cd build

../greetd-setup.sh
