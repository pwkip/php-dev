#!/usr/bin/env bash
CODE='\033[1;33m'
NC='\033[0m' # No Color

script_path=$(pwd)
live_path="/data/sites/web/xbdwmbe/subsites/myproject"
src_path="${script_path}/src/"

echo "🛫 Let's deploy!"

while true
do

cd "${script_path}"

# Parent menu items declared here
select item in deploy_to_live fart
do

case $item in
deploy_to_live)

    # rsync it!
    rsync -r -v -e ssh --delete --exclude="node_modules" --exclude="data" --exclude=".git" ${src_path} xbdwmbe@x.bdwm.be:${live_path}

break
;;
fart)

    echo "💨 Prrrt.."

break
;;
esac
done
done