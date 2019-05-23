#!/bin/bash
# this file is for creating directory with the current date and move all files
# from one folder on my NAS box to another when the webUI can't handle it
mkdir /volume1/private/Other/"$(date +%F)"
mv -f /volume1/backup/untitled\ folder/* /volume1/private/Other/"$(date +%F)"
