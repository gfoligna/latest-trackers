![get_tracker_list](https://github.com/gfoligna/latest-trackers/workflows/get_tracker_list/badge.svg)
![get_blocklist_list](https://github.com/gfoligna/latest-trackers/workflows/get_blocklist_list/badge.svg)

# Getting list of latest torrent trackers

* This simple bash script downloads the latest list of torrent trackers from [torrents.me](https://torrents.me/)

# Scheduled actions
DISCLAIMER: GitHub Actions does not have an URI to get the artifact from the latest build, but it is [coming](https://github.com/actions/upload-artifact/issues/21) apparently. Meaning: *You have to go and manually find  the latest build, click and download its artifact*
## Trackers list

Built _once every hour_. You can find it [here](https://github.com/gfoligna/latest-trackers/actions?query=workflow%3Aget_tracker_list) as an artifact. List is ready to be imported (pasted) into a torrent tracker list since it has a blank line between every URL.

## Blocklists file

Built at _07:00 UTC every day_.
Find it [here](https://github.com/gfoligna/latest-trackers/actions?query=workflow%3Aget_blocklist_list).
This URL it is not smart enough to paste it into your torrent client config to get the blocklist automatically. Ideas are welcome (:
