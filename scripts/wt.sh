#!/bin/sh

if [ -z "$1" ]
  then
    echo "No channel name provided."
    exit 1
fi

channel="${1}"
url="https://www.twitch.tv/${channel}"
stream="${2:-480p,720p,1080p60,best}"
player="${3:-mpv}"
buffer="${4:-64M}"

cmd_streamlink="streamlink -Q -p='${player}' --ringbuffer-size='${buffer}' --twitch-low-latency ${url} ${stream}"
cmd_chatterino="chatterino -c '${channel}'"

nohup sh -c "${cmd_streamlink}" > /dev/null 2>&1 &
nohup sh -c "${cmd_chatterino}" > /dev/null 2>&1 &
