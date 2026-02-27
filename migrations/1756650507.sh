echo "Fix JetBrains font setting"

if [[ $(barchti-font-current) == JetBrains* ]]; then
  barchti-font-set "JetBrainsMono Nerd Font"
fi
