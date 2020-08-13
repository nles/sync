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

# kill old process (grive hangs up sporadically...)
OUTPUT=$(ps aux | grep grive | grep -v grep | awk '{print $2}')
OUTPUTARRAY=(${OUTPUT})
echo "TOTAL OLD PROCESSES $(ps aux | grep grive | grep -v grep | wc -l)"
for PID in "${OUTPUTARRAY[@]}"; do
  ETIME=$(ps -p "$PID" -o etimes=)
  if [ $ETIME -gt $((30*60)) ] ; then
    kill $PID
  fi
done

echo ""
