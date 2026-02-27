echo "Update fastfetch config with new bArchTi logo"

barchti-refresh-config fastfetch/config.jsonc

mkdir -p ~/.config/barchti/branding
cp $BARCHTI_PATH/icon.txt ~/.config/barchti/branding/about.txt
