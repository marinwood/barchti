echo "Make new Osaka Jade theme available as new default"

if [[ ! -L ~/.config/barchti/themes/osaka-jade ]]; then
  rm -rf ~/.config/barchti/themes/osaka-jade
  git -C ~/.local/share/barchti checkout -f themes/osaka-jade
  ln -nfs ~/.local/share/barchti/themes/osaka-jade ~/.config/barchti/themes/osaka-jade
fi
