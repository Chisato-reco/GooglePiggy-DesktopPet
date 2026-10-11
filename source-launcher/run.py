"""Load system Python dependencies before the portable application's directory."""

import os
import sys
from pathlib import Path

APP_DIR = Path(__file__).resolve().parent.parent

# Bundled .pyd files may belong to a different Python version.
os.chdir(sys.base_prefix)
import ctypes
import numpy
import PIL

sys.path.append(str(APP_DIR))
import pig_pet

if __name__ == "__main__":
    pig_pet.main()
