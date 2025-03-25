#!/bin/sh
pipewire &
sleep .5
pipewire-pulse &
sleep .5 
wireplumber &
