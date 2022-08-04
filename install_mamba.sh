# after running install_1.sh

source ~/.bashrc

# Install mamba (https://github.com/mamba-org/mamba, https://mamba.readthedocs.io/en/latest/user_guide/mamba.html)
conda install mamba -n base -c conda-forge -y

source ~/.bashrc

# Clone repos
cd /home/$USER/Code
git clone https://github.com/ReactionMechanismGenerator/RMG-Py.git
git clone https://github.com/ReactionMechanismGenerator/RMG-database.git
git clone https://github.com/ReactionMechanismGenerator/ARC.git
git clone https://github.com/ReactionMechanismGenerator/T3.git

