echo "Install swayOSD to show volume status"

if barchti-cmd-missing swayosd-server; then
  barchti-pkg-add swayosd
  setsid uwsm-app -- swayosd-server &>/dev/null &
fi
