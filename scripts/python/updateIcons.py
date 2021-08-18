#! /usr/bin/python3

import subprocess
import os
import sys

# STILL NOT WORKING CORRECTLY YET

# --- set the list of valid extensions below (lowercase)
# --- use quotes, *don't* include the dot!
ext = ["jpg", "jpeg", "png", "gif", "icns", "ico"]
# ---

dr = sys.argv[1]

for root, dirs, files in os.walk(dr):
    for directory in dirs:
        folder = os.path.join(root, directory)
        print(os.path.join(os.path.abspath(folder), 'cover.jpg'))
        subprocess.Popen([
            "gio", "set", "-t", "string",
            os.path.abspath(folder), "metadata::custom-icon",
            os.path.join(os.path.abspath(folder), 'cover.jpg')
        ])
