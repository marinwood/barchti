echo "Migrate to proper packages for localsend and asdcontrol"

if barchti-pkg-present localsend-bin; then
  barchti-pkg-drop localsend-bin
  barchti-pkg-add localsend
fi

if barchti-pkg-present asdcontrol-git; then
  barchti-pkg-drop asdcontrol-git
  barchti-pkg-add asdcontrol
fi
