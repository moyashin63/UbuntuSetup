#####
#####
#####

sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install compizconfig-settings-manager unity-tweak-tool gdebi


#--------Install NeoVim--------
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
#Install dependencies for NeoVim's python3 module
sudo apt-get install python3-dev python3-pip
pip3 install -U pip3
echo "alias vi='nvim'" >> ~/.bashrc
echo "alias vim='nvim'" >> ~/.bashrc
cd ~/.config/
git clone https://github.com/ysbd1205/nvim.git
echo "--------Installed NeoVim--------"


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
sudo apt-get install openmpi-bin libopenmpi-dev libvtk6.2 libvtk6-dev paraview
cd ~
git clone https://github.com/ysbd1205/MyLIGGGHTS.git
echo "--------Installed MyLIGGGHTS--------"
