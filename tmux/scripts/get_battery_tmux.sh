#!/bin/sh
if battery_info=$(/usr/bin/pmset -g ps | awk '{ if (NR == 2) print $3 " " $4 " " $5 }' | sed -e "s/;//g" -e "s/%//") ; then
  battery_quantity=$(echo $battery_info | awk '{print $1}')
  charging_time=$(echo $battery_info | awk '{print $3}')
  if [[ ! $battery_info =~ "discharging" ]]; then
    battery="#[fg=green]$battery_quantity%#[default] ($charging_time)"
  elif (( $battery_quantity < 16 )); then
    battery="#[fg=red]$battery_quantity%#[default]"
  else
    battery="#[fg=cyan]$battery_quantity%#[default]"
  fi
  echo $battery
fi
