#!/bin/bash

# This script will select 20 random songs from ~/Music and play them in the
# psuedo-gui mode in mpv and CLI will go to bg
cd ~/Music
#ls |sort -R |tail -$N |while read file; do
    # Something involving $file, or you can leave
    # off the while to just get the filenames
#mpv --player-operation-mode=pseudo-gui 
shuf -ezn 20 * | xargs -0 -n1 > ./playlist.m3u8
mpv --player-operation-mode=pseudo-gui ./playlist.m3u8 & 
#done
