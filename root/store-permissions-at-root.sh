RUN_DIR=$(pwd)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd $SCRIPT_DIR

cd ..
mv .gitignore .gitignore_hidden
fd | xargs getfacl > root/permissions_at_root.txt 2> /dev/null
mv .gitignore_hidden .gitignore
