echo "Change to barchti-nvim package"
barchti-pkg-drop barchti-lazyvim
barchti-pkg-add barchti-nvim

# Will trigger to overwrite configs or not to pickup new hot-reload themes
barchti-nvim-setup
