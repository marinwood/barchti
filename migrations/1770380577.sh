echo "Use interactive background selector menu"

mkdir -p ~/.config/elephant/menus
ln -snf $BARCHTI_PATH/default/elephant/barchti_background_selector.lua ~/.config/elephant/menus/barchti_background_selector.lua
barchti-restart-walker
