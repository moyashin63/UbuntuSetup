echo $PASSWORD | sudo -S sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
echo $PASSWORD | sudo -S wget -q -O - https://dl-ssl.google.com/linux/linux_singing_key.pub | sudo apt-key add -
echo $PASSWORD | sudo -S sed -e '1d' /etc/apt/sources.list.d/google.list
echo $PASSWORD | sudo -S apt-get update && sudo apt-get install google-chrome-stable
echo "--------Installed Google Chrome--------"
