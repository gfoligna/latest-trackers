## Created by Gonzalo Foligna (gfoligna@gmail.com) ##

#!/bin/bash

#set -e
out_dir=$1

if [ $1 -e ]; then
  out_dir='.'
fi

curl -s https://torrents.me/tracker-list/?download=latest | sed 's/$/\n/g' > ${out_dir}/trackers_`date +%Y%m%d-%H%M`
if [ $? = 0 ]; then
  echo 'File created with latest trackers'
else
  echo 'Please check errors with curl'
fi
