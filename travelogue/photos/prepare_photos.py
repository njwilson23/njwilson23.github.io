#! /usr/bin/env python
import os
import sys
import subprocess

if len(sys.argv) != 3:
    raise Exception("prepare_photos.py indir outdir")
if not os.path.isdir(sys.argv[1]):
    raise FileNotFoundError("%s is not a directory" % sys.argv[1])
if not os.path.isdir(sys.argv[2]):
    os.mkdir(sys.argv[2])

indir, outdir = sys.argv[1:]

for fnm in filter(lambda s: s.lower().endswith(".jpg"), os.listdir(indir)):
    infnm = os.path.join(indir, fnm)
    outfnm = os.path.join(outdir, fnm)
    ret = subprocess.call(["convert", "-resize", "x400", infnm, outfnm])
    if ret == 0:
        print("%s -> \n\t%s" % (infnm, outfnm))
    else:
        print("failed: \n\t%s -> \n\t%s" % (infnm, outfnm))

