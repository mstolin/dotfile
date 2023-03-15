#!/bin/sh

if [ -z "$1" ]
  then
    echo "No stream URL provided."
    exit 1
fi

url="${1}"
stream="${2:-480p,720p,1080p60,best}"
player="${3:-mpv --profile='stream'}"
buffer="${4:-64M}"

streamlink --player="${player}" \
           --ringbuffer-size="${buffer}" \
           --twitch-low-latency \
           -Q ${url} ${stream} &
