## Created by Gonzalo Foligna (gfoligna@gmail.com) ##

#!/bin/bash

#set -e
out_dir=$1
filename=$2

if [[ -z $1 ]]; then
  echo "Usage: $0 <output directory> <filename>"
  echo 'You have to specify at least its output dir. Default filename is: trackers_`date +%Y%m%d-%H%M`'
  exit 0
fi

if [[ -z $2 ]]; then
  filename="trackers_`date +%Y%m%d-%H%M`"
fi

curl -s -L https://torrends.to/torrent-tracker-list/?download=latest > ${out_dir}/${filename}
if [[ $? = 0 ]]; then
  echo "File created with latest trackers: $out_dir/$filename"
else
  echo 'Please check errors with curl'
fi
