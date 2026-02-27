echo "Make ethereal available as new theme"

if [[ ! -L ~/.config/barchti/themes/ethereal ]]; then
  rm -rf ~/.config/barchti/themes/ethereal
  ln -nfs ~/.local/share/barchti/themes/ethereal ~/.config/barchti/themes/
fi
