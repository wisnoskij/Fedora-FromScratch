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
