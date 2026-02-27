echo "Ensure all indexes and packages are up to date"

barchti-update-keyring
barchti-refresh-pacman
sudo pacman -Syu --noconfirm
