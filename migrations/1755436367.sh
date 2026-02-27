echo "Add minimal starship prompt to terminal"

if barchti-cmd-missing starship; then
  barchti-pkg-add starship
  cp $BARCHTI_PATH/config/starship.toml ~/.config/starship.toml
fi
