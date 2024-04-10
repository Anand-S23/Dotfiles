#!/usr/bin/env bash

TITLE="🌐  Internet Module"

BODY="
   Wi-Fi connected
   Wi-Fi not connected
🟢  Ethernet connected
🔴  Ethernet not connection
"

case $BLOCK_BUTTON in
	3) notify-send -u low "$TITLE" "$BODY" ;;
esac

case "$(cat /sys/class/net/e*/operstate 2>/dev/null)" in
	down) wifiicon=" Ethernet: 🔴" ;;
	up) wifiicon=" Ethernet: 🟢"
esac

echo "$wifiicon" "$(sed /sys/class/net/e*/operstate 2>/dev/null)"

