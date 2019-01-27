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

source ~/UbuntuSetup/powerlineshell.sh
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


#--------LIGGGHTS--------
echo $PASSWORD | sudo -S apt-get install openmpi-bin libopenmpi-dev libvtk6.2 libvtk6-dev paraview
cd ~
git clone https://github.com/ysbd1205/MyLIGGGHTS.git
echo "--------Installed MyLIGGGHTS--------"

source ~/UbuntuSetup/googlechrome.sh
