echo "Use explicit timezone selector when right-clicking on clock"

sed -i 's/barchti-cmd-tzupdate/barchti-launch-floating-terminal-with-presentation barchti-tz-select/g' ~/.config/waybar/config.jsonc
