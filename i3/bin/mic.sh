#!/bin/bash

case $BLOCK_BUTTON in
	1) pactl set-source-mute  $SOURCE toggle ;;
esac

case $(pactl list sources | grep -A 11 "$SOURCE" | grep "Mute:" | awk '{print $2}') in
    yes) echo "   " ;;
    no) echo "  " ;;
esac
