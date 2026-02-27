echo "Add the new Flexoki Light theme"

if [[ ! -L ~/.config/barchti/themes/flexoki-light ]]; then
  ln -nfs ~/.local/share/barchti/themes/flexoki-light ~/.config/barchti/themes/
fi
