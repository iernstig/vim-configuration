import os
import subprocess
from pathlib import Path

command_output = subprocess.run(['which','python'],capture_output=True)
python_path = command_output.stdout.decode("utf-8").rstrip()

cwd = Path(os.getcwd())
vim_dir = Path("./.vim")
vim_dir.mkdir(exist_ok=True)

conf_file = cwd / vim_dir / Path("cocconfig.json")

with open(conf_file, "w") as f:
    f.write('{"python.pythonPath": "' + python_path + '"}\n')
    
