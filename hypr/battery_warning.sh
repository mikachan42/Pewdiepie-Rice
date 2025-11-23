#!/bin/bash

while true; do
  bat_lvl=$(cat /sys/class/power_supply/BAT*/capacity)
  status=$(cat /sys/class/power_supply/BAT*/status)
  if [[ "$status" == "Discharging" && "$bat_lvl" -le 15 ]]; then
    notify-send --urgency=CRITICAL "battery low" "Current: ${bat_lvl}%"
    sleep 1200
  else
    sleep 120
  fi
done

