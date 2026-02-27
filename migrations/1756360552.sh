echo "Move bArchTi Package Repository after Arch core/extra/multilib and remove AUR"

barchti-refresh-pacman
sudo pacman -Syu --noconfirm
