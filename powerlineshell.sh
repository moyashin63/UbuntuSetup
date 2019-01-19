#--------Install Powerline Shell--------
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
sudo rm -r fonts

gsettings set org.gnome.desktop.interface monospace-font-name 'Uvuntu Mono derivative Powerline 13'

sudo apt install -y python-pip
pip install --upgrade pip
pip install --user powerline-shell

echo "--------Installed Powerline Shell--------"
