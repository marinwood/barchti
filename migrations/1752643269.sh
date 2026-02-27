echo "Add new matte black theme"

if [[ ! -L $HOME/.config/barchti/themes/matte-black ]]; then
  ln -snf ~/.local/share/barchti/themes/matte-black ~/.config/barchti/themes/
fi
