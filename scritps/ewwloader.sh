#!/bin/bash
for win in $(yq '.windows[]' ~/.config/eww/config.yaml); do
  eww open "$win" &
done