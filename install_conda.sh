# Make sure periodically that we're downloading the most up to date Anaconda version (see https://www.anaconda.com/products/individual, bottom right)
cd ..

# Download files
wget -P /home/$USER/Downloads https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh

# Installation
bash /home/$USER/Downloads/Anaconda3-2021.11-Linux-x86_64.sh -u
export PATH=$PATH:$HOME/anaconda3/bin
conda init bash

source ~/.bashrc
