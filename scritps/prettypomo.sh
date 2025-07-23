#!/bin/bash

# Read raw state from pomo.sh
output=$(~/bin/pomo.sh clock)

# Extract state char and time
state=${output:0:1}
time=${output:1}

# Map to label
case "$state" in
  W) label="Work" ;;
  S) label="Break" ;;
  L) label="Long Break" ;;
  *) label="Idle" ;;
esac

# Output formatted string
echo "$label: $time"