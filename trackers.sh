#!/bin/bash

#set -e

curl -s https://torrents.me/tracker-list/?download=latest | sed 's/$/\n/g' > ~/Documents/trackers_`date +%Y%m%d-%H%M`
if [ $? = 0 ]; then
  echo 'File created with latest trackers'
else
  echo 'Please check errors with curl'
fi
