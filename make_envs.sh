# This script should be used when creating a new account for a user on our machines
# after running install_2.sh and manually activating rmg_env

cd RMG-database
git remote rename origin official
cd ../ARC
git remote rename origin official
mamba env create -f environment.yml
cd ../T3
git remote rename origin official
mamba env create -f environment.yml
cd ../RMG-Py
git remote rename origin official
mamba env create -f environment.yml

export PYTHONPATH=$HOME/Code/RMG-Py/:$PYTHONPATH
export PATH=$HOME/Code/RMG-Py/:$PATH

export PYTHONPATH=$HOME/Code/ARC/:$PYTHONPATH
export PATH=$HOME/Code/ARC/:$PATH

export PYTHONPATH=$HOME/Code/T3/:$PYTHONPATH
export PATH=$HOME/Code/T3/:$PATH

conda activate rmg_env
cd RMG-Py/
make
python -c "import julia; julia.install(); import diffeqpy; diffeqpy.install()"
julia -e 'using Pkg; Pkg.add(PackageSpec(name="ReactionMechanismSimulator",version="0.4")); using ReactionMechanismSimulator;'
conda deactivate

