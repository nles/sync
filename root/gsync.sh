#!/bin/bash
set -e
RUN_DIR=$(pwd)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd $SCRIPT_DIR

cd ..
/usr/bin/getfacl -R root > permissions.txt
cp permissions.txt root/permissions_at_root.txt
cd root

if [ -f /usr/local/bin/grive2 ]; then
  /usr/local/bin/grive2 ${@:1}
else
  /usr/bin/grive2 ${@:1}
fi
