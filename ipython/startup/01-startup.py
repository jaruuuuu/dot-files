from pathlib import Path
import numpy as np 
import os
import pandas as pd

os.environ['PYTHONBREAKPOINT'] = 'ipdb.set_trace'

get_ipython().run_line_magic(*'load_ext autoreload'.split())
get_ipython().run_line_magic(*'autoreload 2'.split())
