## Created by Gonzalo Foligna (gfoligna@gmail.com) ##

#!/bin/bash

#set -e
out_dir=$1
filename=$2

if [[ $1 -e ]]; then
  out_dir='.'
fi

if [[ $2 -e ]]; then
  filename="trackers_`date +%Y%m%d-%H%M`"
fi

curl -s https://torrents.me/tracker-list/?download=latest > ${out_dir}/${filename}
if [[ $? = 0 ]]; then
  echo 'File created with latest trackers'
else
  echo 'Please check errors with curl'
fi
