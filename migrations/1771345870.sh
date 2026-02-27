echo "Switch lmstudio -> lmstudio-bin"

if pacman -Q lmstudio &>/dev/null; then
  barchti-pkg-drop lmstudio
  barchti-pkg-add lmstudio-bin
fi
