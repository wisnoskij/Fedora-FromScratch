#!/bin/bash

#minimal Networking, standard, (guest, but dont install that on metal)

sudo dnf upgrade

sudo dnf install git
mkdir build
cd build

########## Display Manager (greetd) ##########
git clone --recurse-submodules https://git.sr.ht/~kennylevinsen/greetd
cd greetd
sudo dnf install cargo pam-devel
cargo build --release

# Put things into place
sudo cp target/release/{greetd,agreety} /usr/local/bin/
sudo cp greetd.service /etc/systemd/system/greetd.service
sudo mkdir /etc/greetd
sudo cp config.toml /etc/greetd/config.toml

# Create the greeter user
sudo useradd -M -G video greeter
sudo chmod -R go+r /etc/greetd/

# Look in the configuration file `/etc/greetd/config.toml` and edit as appropriate.
# When done, enable and start greetd
systemctl enable --now greetd


been trying to get greetd working on a minimal fedora vm. It needed pam-devel to compile, but now I am getting thread main panicked at unagle to exec: Sys(EACCES), worker.rs:255:14
<wisnoskij> I am not exactly sure what is going on there, worker.rs does need seem to be trying to execute Sys(EACCES), but seems to be trying to do something with a list of files or directories.
<wisnoskij> I tried the (recommended in the error) backtrace, but either their is nothing to backtrace or I a doing something wrong


######LY#####
sudo dnf install gcc glibc make pam-devel libxcb-devel @base-x git
git clone --recurse-submodules https://github.com/nullgemm/ly.git
cd ly
make
sudo make install
sudo systemctl enable ly.service
sudo systemctl disable getty@tty2.service
sudo systemctl set-default graphical.target
