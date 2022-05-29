#!/bin/bash

########## Display Manager (greetd) ##########
sudo dnf install greetd

sudo systemctl enable greetd
sudo systemctl set-default graphical.target

########## Greeter (tuigreet) ##########
sudo dnf install cargo

git clone https://github.com/apognu/tuigreet
cd tuigreet
cargo build --release
mv target/release/tuigreet /usr/local/bin/tuigreet

