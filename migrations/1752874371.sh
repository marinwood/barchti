echo "Add Catppuccin Latte light theme"

if [[ ! -L $HOME/.config/barchti/themes/catppuccin-latte ]]; then
  ln -snf ~/.local/share/barchti/themes/catppuccin-latte ~/.config/barchti/themes/
fi
