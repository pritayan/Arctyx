#!/bin/bash

update=$(checkupdates 2>/dev/null | wc -l)
echo "$update updates pending"
