echo "Update Waybar for new bArchTi menu"

if ! grep -q "" ~/.config/waybar/config.jsonc; then
  barchti-refresh-waybar
fi
