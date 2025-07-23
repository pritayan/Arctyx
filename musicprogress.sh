#!/bin/bash
pos=$(playerctl position 2>/dev/null)
len=$(playerctl metadata mpris:length 2>/dev/null)
if [ -z "$pos" ] || [ -z "$len" ] || [ "$len" -eq 0 ]; then
  echo "0"
else
  # Convert length to seconds
  perc=$(awk "BEGIN {print int(($pos/($len/1000000))*100)}")
  echo "$perc"
fi
