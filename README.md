# ARC and T3 Workshop:
Welcome to the instructions for the ACS fall 2022- ARC and T3 workshop!

Here are the files used to automatically install the software required for the workshop.

# installations: 

In your Ubuntu virtual machine, create a "Code" directory using the Files application:
Open the "Files" app (on the ruller, typically in the left side of the screen) by clicking on it.

Make sure that the directory in the upper part of the window sais "Home".

right clicking on the background, choosing "New Folder" and choose the name "Code".

Next, open a terminal in the that folder.

This can be done by right clicking on the Files application and choosing "Open In Terminal", or using Ctrl+Alt+T and `cd Code`

Run:

`sudo apt install git gcc g++ make -y`

Then:

`git clone https://github.com/DanaResearchGroup/ARC_T3_Workshop`

Next:

`bash ARC_T3_Workshop/install_conda.sh`

Look for the required interaction while installing. for example, you may need to type "yes" in the terminal to approve the terms and conditions for Anaconda3.

Make sure that you are installing Anaconda3 under the default prefix `"home/username/anaconda3"`.

Then, close the terminal, and open a new one in the same directory.

Run:

`bash ARC_T3_Workshop/main.sh`

# Optional: Testing

Note: this stage might take an additional ~30 minutes of idle time.

After the installation is finished, navigate (using the terminal of the Files application) to `RMG-Py` (in terminal: `cd ~/Code/RMG-Py`), then, in the terminal, write the following command:

`conda activate rmg_env`

`make test`

After the tests are done, repeat the process with ARC: 

in the terminal 
`cd ../ARC`

then

`conda activate arc_env`

`make test`

If the tests passes, it should conclude with no errors. If errors occure, please open an issue, with a screenshot of the error, so we could direct you with further instructions.

# Congrats! you are all set for the ACS Fall 2022 ARC and T3 Workshop!
