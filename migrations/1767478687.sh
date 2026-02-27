echo "Add opencode with system themeing"

barchti-pkg-add opencode

# Add config using barchti theme by default
if [[ ! -f ~/.config/opencode/opencode.json ]]; then
  mkdir -p ~/.config/opencode
  cp $BARCHTI_PATH/config/opencode/opencode.json ~/.config/opencode/opencode.json
fi
