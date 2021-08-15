import sys
import os
import pathlib

def find_manylinux_scripts(dockerfile_path):    
    for p in pathlib.Path(dockerfile_path).resolve().parents:
        print(p / 'manylinux-entrypoint')
        if (p / 'manylinux-entrypoint').exists():
          return p
    return None
   
 

print(is_manylinux(sys.argv[1]))