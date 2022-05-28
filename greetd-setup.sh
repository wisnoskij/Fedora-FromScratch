#!/bin/bash

########## Display Manager (greetd) ##########
sudo dnf install greetd

sudo systemctl enable greetd
sudo systemctl set-default graphical.target
