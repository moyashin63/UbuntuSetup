sudo echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_singing_key.pub | sudo apt-key add -
sudo apt-get update && sudo apt-get install google-chrome-stable
sudo sed -e '1d' /etc/apt/sources.list.d/google.list
sudo apt-get update
echo "--------Installed Google Chrome--------"
