# Copy over bArchTi configs
mkdir -p ~/.config
cp -R ~/.local/share/barchti/config/* ~/.config/

# Use default bashrc from bArchTi
cp ~/.local/share/barchti/default/bashrc ~/.bashrc
