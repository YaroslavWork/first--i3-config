INTERNAL="eDP-2"
EXTERNAL="DP-1-2"

# Check if external monitor is connected
if xrandr | grep "$EXTERNAL connected"; then
    xrandr --output "$EXTERNAL" --primary --auto --output "$INTERNAL" --off
else
    xrandr --output "$INTERNAL" --primary --auto --output "$EXTERNAL" --off
fi
