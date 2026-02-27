echo "Add the new ristretto theme as an option"

if [[ ! -L ~/.config/barchti/themes/ristretto ]]; then
  ln -nfs ~/.local/share/barchti/themes/ristretto ~/.config/barchti/themes/
fi
