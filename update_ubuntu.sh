INSFOLDER=~/.benten
echo "If you are mac user, please use mac port"
echo "http://www.macports.org/"
echo "And download both python and pip"
echo "And don't forget set PATH for ~/bin/sh all wrapped bash script is there"
rm -vf ~/bin/sh/benten
mkdir -p ~/bin/sh
mkdir -p $INSFOLDER
cp -vf *.py $INSFOLDER
cp -vf benten ~/bin/sh

echo "Do you wish to overwrite database?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) cp -vf *.db $INSFOLDER; break;;
        No ) break;;
    esac
done


chmod -R 755 $INSFOLDER
chmod -R 755 ~/bin/sh
