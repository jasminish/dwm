#!/bin/sh

batt=$(cat /sys/class/power_supply/BAT1/capacity)
status=$(cat /sys/class/power_supply/BAT1/status)

if [[ $status == 'Charging' ]]; then
  echo "󰂄$batt%"
elif [[ $batt -gt 95 ]]; then 
  echo "󰁹$batt%"
elif [[ $batt -gt 75 ]]; then 
  echo "󰂀$batt%"
elif [[ $batt -gt 50 ]]; then 
  echo "󰁾$batt%"
elif [[ $batt -gt 25 ]]; then 
  echo "󰁻$batt%"
else
  echo "󱃍$batt%"
fi
