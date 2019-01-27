#--------Install Powerline Shell--------
git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts
./install.sh
cd ..
echo $PASSWORD | sudo -S rm -r fonts

gsettings set org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono derivative Powerline 13'

echo $PASSWORD | sudo -S apt-get install -y python-pip
pip install --user powerline-shell

gsettings set org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono derivative Powerline 13'
echo "--------Installed Powerline Shell--------"
