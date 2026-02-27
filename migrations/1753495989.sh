echo "Allow updating of timezone by right-clicking on the clock (or running barchti-cmd-tzupdate)"

if barchti-cmd-missing tzupdate; then
  bash "$BARCHTI_PATH/install/config/timezones.sh"
  barchti-refresh-waybar
fi
