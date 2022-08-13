#!/usr/bin/env bash

polybar-msg cmd quit
echo "---" | tee -a /tmp/topbar.log /tmp/bottombar.log
polybar topbar 2>&1 | tee -a /tmp/topbar.log & disown
polybar bottombar 2>&1 | tee -a /tmp/bottombar.log & disown
echo "Bars launched..."