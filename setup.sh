#####
#####
#####

echo $PASSWORD | sudo -S apt-get install compizconfig-settings-manager unity-tweak-tool gdebi

git config --global user.email "ys.bd.1205@gmail.com"
git config --global user.name "ysbd1205"


#--------Install NeoVim--------
echo $PASSWORD | sudo -S apt-get install software-properties-common
echo $PASSWORD | sudo -S add-apt-repository ppa:neovim-ppa/unstable
echo $PASSWORD | sudo -S apt-get update
echo $PASSWORD | sudo -S apt-get install neovim xsel
#Install dependencies for NeoVim's python3 module
echo $PASSWORD | sudo -S apt-get install python3-dev python3-pip
cd ~/.config/
git clone https://github.com/ysbd1205/nvim.git
echo "--------Installed NeoVim--------"

cd ~/UbuntuSetup
. powerlineshell.sh
echo "source ~/UbuntuSetup/mybashrc" >> ~/.bashrc


#--------Install Nvidia driver--------
#sudo add-apt-repository ppa:graphics-drivers/ppa
#sudo apt update
#sudo apt search nvidia
#sudo apt-get install nvidia-NNN
#echo "--------Installed NVidia driver NNN--------"


#--------Install Google Drive--------
#sudo add-apt-repository ppa:alessandro-strada/ppa
#sudo apt-get update
#mkdir ~/GoogleDrive
#Login
#sudo apt-get install google-drive-ocamlfuse
#google-drive-ocamlfuse ~/GoogleDrive



#--------Install Powerline Shell--------
git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts
./install.sh
cd ..
echo $PASSWORD | sudo -S rm -r fonts
echo $PASSWORD | sudo -S apt-get install -y python-pip
pip install --user powerline-shell

gsettings set org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono derivative Powerline 13'
echo "--------Installed Powerline Shell--------"



#--------LIGGGHTS--------
echo $PASSWORD | sudo -S apt-get install openmpi-bin libopenmpi-dev libvtk6.2 libvtk6-dev paraview
cd ~
git clone https://github.com/ysbd1205/excavation.git

cd ~/UbuntuSetup


# chrome
echo $PASSWORD | sudo -S sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
echo $PASSWORD | sudo -S wget -q -O - https://dl-ssl.google.com/linux/linux_singing_key.pub | sudo apt-key add -
echo $PASSWORD | sudo -S sed -e '1d' /etc/apt/sources.list.d/google.list
echo $PASSWORD | sudo -S apt-get update && sudo apt-get install google-chrome-stable
echo "--------Installed Google Chrome--------"
