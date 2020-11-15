#!/bin/sh

mute=$(amixer get Master | grep 'off')
volume=$(amixer get Master | grep 'Right:' | grep -oP '([0-9]+)' | tail -n1 )

if [[ $mute == '' ]]; then
  echo "󰖁$volume%"
elif [[ $volume -gt 50 ]]; then
  echo "󰕾$volume%"
else 
  echo "󰖀$volume%"
fi