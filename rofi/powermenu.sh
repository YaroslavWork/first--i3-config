ROFI_THEME="$HOME/.config/rofi/catppuccin/themes/catppuccin-latte.rasi"

chosen=$(echo -e "⏻  Power Off\n  Reboot\n󰤄  Sleep\n  Lock" | rofi -dmenu -i -p "Power Menu")

case "$chosen" in
    "⏻  Power Off") systemctl poweroff ;;
    "  Reboot") systemctl reboot ;;
    "󰤄  Sleep") systemctl suspend ;;
    "  Lock") i3lock ;;
esac