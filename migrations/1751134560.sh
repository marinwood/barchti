echo "Add UWSM env"

export BARCHTI_PATH="$HOME/.local/share/barchti"
export PATH="$BARCHTI_PATH/bin:$PATH"

mkdir -p "$HOME/.config/uwsm/"
cat <<EOF | tee "$HOME/.config/uwsm/env"
export BARCHTI_PATH=$HOME/.local/share/barchti
export PATH=$BARCHTI_PATH/bin/:$PATH
EOF

# Ensure we have the latest repos and are ready to pull
barchti-update-keyring
barchti-refresh-pacman
sudo systemctl restart systemd-timesyncd
sudo pacman -Sy # Normally not advisable, but we'll do a full -Syu before finishing

mkdir -p ~/.local/state/barchti/migrations
touch ~/.local/state/barchti/migrations/1751134560.sh

# Remove old AUR packages to prevent a super lengthy build on old bArchTi installs
barchti-pkg-drop zoom qt5-remoteobjects wf-recorder wl-screenrec

# Get rid of old AUR packages
bash $BARCHTI_PATH/migrations/1756060611.sh
touch ~/.local/state/barchti/migrations/1756060611.sh

bash barchti-update-perform
