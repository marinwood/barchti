echo "Add Tmux as an option with themed styling"

barchti-pkg-add tmux

if [[ ! -f ~/.config/tmux/tmux.conf ]]; then
  mkdir -p ~/.config/tmux
  cp $BARCHTI_PATH/config/tmux/tmux.conf ~/.config/tmux/tmux.conf
  barchti-theme-refresh
fi
