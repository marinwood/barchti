echo "Make hackerman available as new theme"

if [[ ! -L ~/.config/barchti/themes/hackerman ]]; then
  rm -rf ~/.config/barchti/themes/hackerman
  ln -nfs ~/.local/share/barchti/themes/hackerman ~/.config/barchti/themes/
fi
