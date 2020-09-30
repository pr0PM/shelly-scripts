#!/bin/bash

# This script will select 20 random songs from ~/Music and play them in the
# psuedo-gui mode in mpv and CLI will go to bg
cd ~/Music/
shuf -ezn 20 * | xargs -0 -n1 > ./playlist.m3u8
mpv --no-video --player-operation-mode=pseudo-gui ./playlist.m3u8 & 
