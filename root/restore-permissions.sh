#!/bin/bash
set -e
RUN_DIR=$(pwd)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd $SCRIPT_DIR

cp permissions_at_root.txt ../permissions.txt
cd ..
setfacl --restore=permissions.txt
