"""
Submit scripts and incore commands
"""

# commands to execute ESS incore (without cluster software submission)
incore_commands = {
    'xtb': ['CONDA_BASE=$(conda info --base)',
            'source $CONDA_BASE/etc/profile.d/conda.sh',
            'conda activate xtb_env',
            'bash input.sh',
            ],
    'xtb_gsm': ['CONDA_BASE=$(conda info --base)',
                'source $CONDA_BASE/etc/profile.d/conda.sh',
                'conda activate xtb_env',
                './gsm.orca',
                ],
    'sella': ['CONDA_BASE=$(conda info --base)',
              'source $CONDA_BASE/etc/profile.d/conda.sh',
              'conda activate sella_env',
              'python sella_runner.py',
              ],
}

pipe_submit = {}

submit_scripts = {}

