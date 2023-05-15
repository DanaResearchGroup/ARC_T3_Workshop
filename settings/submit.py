"""
Submit scripts and incore commands
"""

# commands to execute ESS incore (without cluster software submission)
incore_commands = {
    'gaussian': ['g16 < input.gjf > input.log',
                 'formchk check.chk check.fchk',
                 ],
    'xtb': [
            'bash input.sh',
            ],
    'xtb_gsm': ['micromamba activate xtb_env',
                './gsm.orca',
                ],
    'sella': ['/opt/conda/envs/sella_env/bin/python sella_runner.py'],
}

pipe_submit = {}

submit_scripts = {}

