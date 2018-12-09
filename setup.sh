#####
#####
#####

sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install git compizconfig-settings-manager 
sudo apt-get install unity-tweak-tool 
sudo apt-get install gdebi


#--------Install NeoVim--------
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
#Install dependencies for NeoVim's python3 module
sudo apt-get install python3-dev python3-pip
pip3 install -U pip3
echo "--------Installed NeoVim--------"


#--------Install Nvidia driver--------
#sudo add-apt-repository ppa:graphics-drivers/ppa
#sudo apt update
#sudo apt search nvidia
#sudo apt-get install nvidia-NNN
#echo "--------Installed NVidia driver NNN--------"


#--------Install Google Chrome--------
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update && sudo apt-get install google-chrome-stable
echo "--------Installed Google Chrome--------"


#--------Install Google Drive--------
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt-get update
mkdir ~/GoogleDrive
#Login
#sudo apt-get install google-drive-ocamlfuse
#google-drive-ocamlfuse ~/GoogleDrive


#--------LIGGGHTS--------
sudo apt-get install openmpi-bin libopenmpi-dev libvtk6.2 libvtk6-dev paraview
git clone https://github.com/ysbd1205/MyLIGGGHTS.git
echo "--------Installed MyLIGGGHTS--------"

