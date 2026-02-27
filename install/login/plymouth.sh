if [[ $(plymouth-set-default-theme) != "barchti" ]]; then
  sudo cp -r "$HOME/.local/share/barchti/default/plymouth" /usr/share/plymouth/themes/barchti/
  sudo plymouth-set-default-theme barchti
fi
