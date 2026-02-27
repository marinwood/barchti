echo "Link new theme picker config"

mkdir -p ~/.config/elephant/menus
ln -snf $BARCHTI_PATH/default/elephant/barchti_themes.lua ~/.config/elephant/menus/barchti_themes.lua
sed -i '/"menus",/d' ~/.config/walker/config.toml
barchti-restart-walker
