#!/bin/env python3
from subprocess import check_call
from os.path import *
from os import *

THIS_DIR = dirname(abspath(__file__))
OUT_DIR = join(THIS_DIR, "lib", "src", "generated", "grpc")
INPUT_FILE = join(THIS_DIR, "sofort.proto")

if not exists(OUT_DIR):
    makedirs(OUT_DIR)

check_call(["protoc", INPUT_FILE, "-I", THIS_DIR, f"--dart_out=grpc:{OUT_DIR}"])