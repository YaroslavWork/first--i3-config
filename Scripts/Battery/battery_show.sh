#!/bin/bash

# Get battery percentage
BAT_LEVEL=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)
charging_icon=""
print=""

if [ $status = "Charging" ]; then
    charging_icon=" 󱐋"
fi

if [ "$BAT_LEVEL" -gt 95 ]; then
    print=""
elif [ "$BAT_LEVEL" -gt 80 ]; then
    print=" $charging_icon $BAT_LEVEL%"
elif [ "$BAT_LEVEL" -gt 60 ]; then
    print=" $charging_icon  $BAT_LEVEL%"
elif [ "$BAT_LEVEL" -gt 40 ]; then
    print=" $charging_icon  $BAT_LEVEL%"
elif [ "$BAT_LEVEL" -gt 20 ]; then
    print=" $charging_icon  $BAT_LEVEL%"
else
    print=" $charging_icon  $BAT_LEVEL%"
fi

if [ -z $print ]; then
    echo ""
else
    echo "$print  |  "
fi