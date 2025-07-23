#!/bin/bash
hour=$(date +%H)

if [ "$hour" -ge 5 ] && [ "$hour" -lt 12 ]; then
  echo "   Good morning"
elif [ "$hour" -ge 12 ] && [ "$hour" -lt 17 ]; then
  echo "   Good afternoon"
else
  echo "   Good evening"
fi
