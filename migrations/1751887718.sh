echo "Install Impala as new wifi selection TUI"

if barchti-cmd-missing impala; then
  barchti-pkg-add impala
  barchti-refresh-waybar
fi
