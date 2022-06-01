#!/bin/bash

########## Display Manager (greetd) ##########
sudo dnf install greetd

sudo systemctl enable greetd
sudo systemctl set-default graphical.target

#$SHELL is not even set yet, so login cannot run correctly with this cmd set
sudo sed -i 's|--cmd $SHELL|--cmd /bin/bash|' /etc/greetd/config.toml

########## Greeter (tuigreet) ##########
sudo dnf copr enable alebastr/sway-extras
sudo dnf install greetd-tuigreet

sudo sed -i 's/agreety/tuigreet/' /etc/greetd/config.toml	#Run tuigreet as the greeter
