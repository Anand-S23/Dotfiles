#!/usr/bin/env bash
#
case $BLOCK_BUTTON in
	1) "$TERMINAL" -e nmtui; pkill -RTMIN+4 dwmblocks ;;
	3) notify-send -u low "🌐 Internet module" "\- Click to connect
  : no wifi connection
  : wifi connection with quality
#  : no ethernet
# : ethernet working
" ;;
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac

case "$(cat /sys/class/net/e*/operstate 2>/dev/null)" in
	down) wifiicon=" Ethernet: 🔴" ;;
	up) wifiicon=" Ethernet: 🟢"
esac

# printf "%s%s\n" "$wifiicon" "$(sed "s/down/ /;s/up//" /sys/class/net/e*/operstate 2>/dev/null)"
# printf "%s%s\n" "$wifiicon" "$(sed /sys/class/net/e*/operstate 2>/dev/null)"
echo "$wifiicon" "$(sed /sys/class/net/e*/operstate 2>/dev/null)"
if ("$(cat /sys/class/net/e*/operstat 2>/dev/null)" in down){
	print "#FF0000";
} 

