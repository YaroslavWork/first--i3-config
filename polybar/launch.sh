#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

MONITOR=$(xrandr --query | grep " connected primary" | cut -d " " -fi)

# Launch bar
# Bar is the name set in the polybar config, so if you change it, you have to change it here too.
MONITOR=$MONITOR polybar bar &

echo "Bars launched..."
