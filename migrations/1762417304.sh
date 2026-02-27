echo "Replace bluetooth GUI with TUI"

barchti-pkg-add bluetui
barchti-pkg-drop blueberry

if ! grep -q "barchti-launch-bluetooth" ~/.config/waybar/config.jsonc; then
  sed -i 's/blueberry/barchti-launch-bluetooth/' ~/.config/waybar/config.jsonc
fi
