#!/bin/bash
set -e
RUN_DIR=$(pwd)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd $SCRIPT_DIR

/usr/bin/grive2 ${@:1}
