#!/bin/bash

# Set paths
CACHE_DIR="$HOME/.config/eww/cache"
COVER="$CACHE_DIR/music_cover.jpg"
DEFAULT_COVER="$HOME/images/music.png"   # adjust as needed

mkdir -p "$CACHE_DIR"

playerctl metadata --follow | \
while read -r line; do
    ART_URL="$(playerctl metadata mpris:artUrl 2>/dev/null)"
    rm -f "$COVER"
    if [[ -z "$ART_URL" ]]; then
        cp "$DEFAULT_COVER" "$COVER"
        continue
    fi
    if [[ "$ART_URL" =~ ^file:// ]]; then
        ART_PATH="${ART_URL#file://}"
        if [[ -f "$ART_PATH" ]]; then
            cp "$ART_PATH" "$COVER"
        else
            cp "$DEFAULT_COVER" "$COVER"
        fi
    elif [[ "$ART_URL" =~ ^https?:// ]]; then
        curl -sL "$ART_URL" -o "$COVER"
        [[ -s "$COVER" ]] || cp "$DEFAULT_COVER" "$COVER"
    else
        cp "$DEFAULT_COVER" "$COVER"
    fi
done
