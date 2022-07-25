#!/usr/bin/env bash

########## Display Manager (greetd) ##########
sudo dnf install greetd

sudo systemctl enable greetd
sudo systemctl set-default graphical.target

$session_dir='/usr/share/ffs-sessions/'
$args="/
 --time/
 --remember/
 --remember-session/
 --asterisks/
 --sessions ${session_dir}/
--/"
#$SHELL is not even set yet, so login cannot run correctly with this cmd set
########## Greeter (tuigreet) ##########
sudo dnf copr enable alebastr/sway-extras
sudo dnf install greetd-tuigreet

sudo sed -i 's| --cmd $SHELL|$args|' /etc/greetd/config.toml
sudo sed -i 's/agreety/tuigreet/' /etc/greetd/config.toml	#Run tuigreet as the greeter

#Setup Bash as a session
sudo mkdir "${session_dir}"
sudo cp ../files/bash.desktop "${session_dir}"
