#!/bin/bash
set -e
RUN_DIR=$(pwd)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd $SCRIPT_DIR

grive2 ${@:1}
