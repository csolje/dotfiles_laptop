#!/bin/bash
# Listing all files and sorting them with the langest last
du -sc * | sort -n | while read num dir; do echo "$(($num/1024))M $dir"; done | column -t
