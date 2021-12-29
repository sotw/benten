INSFOLDER=~/.benten
echo "If you are mac user, please use mac port"
echo "http://www.macports.org/"
echo "And download both python and pip"
echo "And don't forget set PATH for ~/bin/sh all wrapped bash script is there"
rm -Rf $INSFOLDER
rm -vf ~/bin/sh/benten
mkdir -p ~/bin/sh
mkdir -p $INSFOLDER
cp -vf *.py $INSFOLDER
cp -vf benten ~/bin/sh
cp -vf *.db $INSFOLDER

sudo apt install python3-pip
sudo pip install lxml
#I should seperate this to python deploy
#sudo pip install re #for wikipedia
sudo pip install BeautifulSoup4 #for wikipedia
sudo apt install python3-lxml
chmod -R 755 $INSFOLDER
chmod -R 755 ~/bin/sh

