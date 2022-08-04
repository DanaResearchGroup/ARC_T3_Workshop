"""
ARC's settings
"""

import os
import string
import sys

servers = {
}

# Electronic structure software ARC may access (use lowercase):
supported_ess = ['xtb', 'torchani']

# TS methods to try when appropriate for a reaction (other than user guesses which are always allowed):
ts_adapters = ['heuristics', 'AutoTST', 'GCN', 'KinBot', 'xtb_gsm']
#ts_adapters = []

# List here job types to execute by default
default_job_types = {'conformers': True,      # defaults to True if not specified
                     'opt': True,             # defaults to True if not specified
                     'fine_grid': True,       # defaults to True if not specified
                     'freq': True,            # defaults to True if not specified
                     'sp': True,              # defaults to True if not specified
                     'rotors': True,          # defaults to True if not specified
                     'irc': True,             # defaults to True if not specified
                     'orbitals': False,       # defaults to False if not specified
                     'lennard_jones': False,  # defaults to False if not specified
                     'bde': False,            # defaults to False if not specified
                     }

# List here (complete or partial) phrases of methods or basis sets you'd like to associate to specific ESS
# Avoid ascribing the same phrase to more than one software, this may cause undeterministic assignment of software
# Format is levels_ess = {ess: ['phrase1', 'phrase2'], ess2: ['phrase3', 'phrase3']}
levels_ess = {
    'xtb': ['xtb', 'gfn'],
    'torchani': ['torchani'],
}

# xTB-GSM
xtb_gsm_settings = {'sm_type': 'GSM',
                    'restart': 0,
                    'max_opt_iters': 50,
                    'step_opt_iters': 30,
                    'conv_tol': 0.05,
                    'add_node_tol': 0.1,
                    'scaling': 1.0,
                    'ssm_dqmax': 0.8,
                    'growth_direction': 0,
                    'int_thresh': 2.0,
                    'min_spacing': 5.0,
                    'bond_fragments': 1,
                    'initial_opt': 0,
                    'final_opt': 150,
                    'product_limit': 100.0,
                    'ts_final_type': 1,
                    'nnodes': 9,
                    }
