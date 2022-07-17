# fedora-fromscratch
Setup files for Fedora Minimal Installation
Fedora Everything ISO for minimal desktop image (https://alt.fedoraproject.org/)

curl -LO https://raw.githubusercontent.com/wisnoskij/fedora-fromscratch/main/fedora-fromscratch.sh
chmod u+x fedora-fromscratch.sh
run ./fedora-fromscratch.sh

To work on:
install @base-x awesome
create .xinitrc "exec awesome"
see if I can get sessions to work with tuigreet

rm /usr/share/xsessions/awesome.desktop # or exec=startx
--remember --remember-session


nvim
config
plugins
copy to 
/home/wisnoskij/.local/share/nvim/site/pack/<PACK NAME(just make up anything)>/start/(git clone)
git clone https://tpope.io/vim/commentary.git
vim -u NONE -c "helptags commentary/doc" -c q (how does this work for nvim?)
