########## Display Manager (LY) ##########
sudo dnf install gcc glibc make pam-devel libxcb-devel @base-x git
git clone --recurse-submodules https://github.com/nullgemm/ly.git
cd ly
make
sudo make install
sudo systemctl enable ly.service
sudo systemctl disable getty@tty2.service
sudo systemctl set-default graphical.target
~                                            
