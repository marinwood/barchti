echo "Uniquely identify terminal apps with custom app-ids using barchti-launch-tui"

# Replace terminal -e calls with barchti-launch-tui in bindings
sed -i 's/\$terminal -e \([^ ]*\)/barchti-launch-tui \1/g' ~/.config/hypr/bindings.conf

# Update waybar to use barchti-launch-or-focus with barchti-launch-tui for TUI apps
sed -i 's|xdg-terminal-exec btop|barchti-launch-or-focus-tui btop|' ~/.config/waybar/config.jsonc
sed -i 's|xdg-terminal-exec --app-id=com\.barchti\.Wiremix -e wiremix|barchti-launch-or-focus-tui wiremix|' ~/.config/waybar/config.jsonc
