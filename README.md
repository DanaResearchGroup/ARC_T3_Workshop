# ARC and T3 Workshop:
Welcome to the instructions for the ACS fall 2022- ARC and T3 workshop!

Here are the files used to automatically install the software required for the workshop.

# installations: 

In your Ubuntu virtual machine, create a Code directory using the Files application by right clicking on the background and choosing "New Folder".

Next, open a terminal in the that folder.

This can be done by right clicking on the file explorrer and choosing "Open In Terminal", or using Ctrl+Alt+T and `cd Code`

Run:

`sudo apt install git`

Then:

`git clone https://github.com/kfir4444/ARC_T3_Workshop`

Next:

`bash ARC_T3_Workshop/install_conda.sh`

Look for the required interaction while installing. for example, you may need to type "yes" in the terminal to approve the terms and conditions.

Make sure that you are installing Anaconda3 under the prefix `"home/username/anaconda3"`.

Then, close the terminal, and open a new one in the same directory.

Run:

`bash ARC_T3_Workshop/install_mamba_psi4.sh`

`bash ARC_T3_Workshop/make_envs.sh`

# Optional: Testing

After the installation is finished, navigate (using the terminal of the Files application) to `RMG-Py` (in terminal: `cd ~/Code/RMG-Py`), then, in the terminal, write the following command:

`make test`

After the tests are done, repeat the process with ARC: 

in the terminal 

`cd ../ARC`

then

`make test`


# Congrats! you are all set for the ACS Fall 2022 ARC and T3 Workshop!
