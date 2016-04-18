#!/bin/sh
REPOSITORY=
 
# Backup all of /home and /var/www except a few
# excluded directories
borg create --stats  --compression lz4 -v
    $REPOSITORY::MASTERFILE-`date +%Y-%m-%d-%I:%M%p`
        /home/chrs
    --exclude /home/chrs/.dropbox           \
    --exclude /home/chrs/Documents/Android \
    --exclude /home/chrs/Downloads            \
    --exclude /home/chrs/Dropbox              \
    --exclude /home/lost+found                   \
    --exclude /home/chrs/livecd                \
    --exclude /home/.snapshots                   \
    --exclude /home/chrs/.cache                \
#    --exclude /home/Ben/Music/Justin\ Bieber    \
#    --exclude '*.pyc'
 
# Use the `prune` subcommand to maintain 7 daily, 4 weekly
# and 6 monthly archives.
attic prune -v $REPOSITORY --keep-daily=7 --keep-weekly=4 --keep-monthly=6
