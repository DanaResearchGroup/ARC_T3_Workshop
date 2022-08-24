# Run this before starting the workshop

echo update ARC:
cd $HOME/Code/ARC

git pull

cd ..

rm /home/$USER/.arc/settings.py
cp ARC_T3_Workshop/settings/settings.py /home/$USER/.arc
