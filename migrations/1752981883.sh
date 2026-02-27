echo "Replace wofi with walker as the default launcher"

if barchti-cmd-missing walker; then
  barchti-pkg-add walker-bin libqalculate

  barchti-pkg-drop wofi
  rm -rf ~/.config/wofi

  mkdir -p ~/.config/walker
  cp -r ~/.local/share/barchti/config/walker/* ~/.config/walker/
fi
