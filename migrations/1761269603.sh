echo "Add right-click terminal action to waybar barchti menu icon"

WAYBAR_CONFIG="$HOME/.config/waybar/config.jsonc"

if [[ -f $WAYBAR_CONFIG ]] && ! grep -A5 '"custom/barchti"' "$WAYBAR_CONFIG" | grep -q '"on-click-right"'; then
  sed -i '/"on-click": "barchti-menu",/a\    "on-click-right": "barchti-launch-terminal",' "$WAYBAR_CONFIG"
fi
