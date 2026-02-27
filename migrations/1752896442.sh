echo "Replace volume control GUI with a TUI"

if barchti-cmd-missing wiremix; then
  barchti-pkg-add wiremix
  barchti-pkg-drop pavucontrol
  barchti-refresh-applications
  barchti-refresh-waybar
fi
