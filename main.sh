# after running installing conda
CONDA_BASE=$(conda info --base)
source $CONDA_BASE/etc/profile.d/conda.sh

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

# Change remote names

cd ARC
mamba env create -f environment.yml
cd ../T3
mamba env create -f environment.yml
cd ../RMG-Py
mamba env create -f environment.yml

# Echo paths to ~/.bashrc

echo 'export PYTHONPATH=$HOME/Code/RMG-Py/:$PYTHONPATH' >> ~/.bashrc
echo 'export PATH=$HOME/Code/RMG-Py/:$PATH ' >> ~/.bashrc

echo 'export PYTHONPATH=$HOME/Code/ARC/:$PYTHONPATH' >> ~/.bashrc
echo 'export PATH=$HOME/Code/ARC/:$PATH' >> ~/.bashrc

echo 'export PYTHONPATH=$HOME/Code/T3/:$PYTHONPATH' >> ~/.bashrc
echo 'export PATH=$HOME/Code/T3/:$PATH' >> ~/.bashrc

source ~/.bashrc

# Compile RMG

conda activate rmg_env
make
python -c "import julia; julia.install(); import diffeqpy; diffeqpy.install()"
julia -e 'using Pkg; Pkg.add(PackageSpec(name="ReactionMechanismSimulator",version="0.4")); using ReactionMechanismSimulator;'
conda deactivate

# Install ARC's requirements.

conda activate rmg_env
cd ../ARC/
make install-all
conda deactivate
