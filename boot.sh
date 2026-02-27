#!/bin/bash

# Set install mode to online since boot.sh is used for curl installations
export BARCHTI_ONLINE_INSTALL=true

ansi_art='                 ▄▄▄
 ▄█████▄    ▄███████████▄    ▄███████   ▄███████   ▄███████   ▄█   █▄    ▄█   █▄
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   ███  ███   ███  ███   ███
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   █▀   ███   ███  ███   ███
███   ███  ███   ███   ███ ▄███▄▄▄███ ▄███▄▄▄██▀  ███       ▄███▄▄▄███▄ ███▄▄▄███
███   ███  ███   ███   ███ ▀███▀▀▀███ ▀███▀▀▀▀    ███      ▀▀███▀▀▀███  ▀▀▀▀▀▀███
███   ███  ███   ███   ███  ███   ███ ██████████  ███   █▄   ███   ███  ▄██   ███
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   ███  ███   ███  ███   ███
 ▀█████▀    ▀█   ███   █▀   ███   █▀   ███   ███  ███████▀   ███   █▀    ▀█████▀
                                       ███   █▀                                  '

clear
echo -e "\n$ansi_art\n"

# Use custom branch if instructed, otherwise default to master
BARCHTI_REF="${BARCHTI_REF:-master}"

# Set mirror based on branch
if [[ $BARCHTI_REF == "dev" ]]; then
  export BARCHTI_MIRROR=edge
  echo 'Server = https://mirror.barchti.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
elif [[ $BARCHTI_REF == "rc" ]]; then
  export BARCHTI_MIRROR=rc
  echo 'Server = https://rc-mirror.barchti.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
else
  export BARCHTI_MIRROR=stable
  echo 'Server = https://stable-mirror.barchti.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
fi

sudo pacman -Syu --noconfirm --needed git

# Use custom repo if specified, otherwise default to marinwood/barchti
BARCHTI_REPO="${BARCHTI_REPO:-marinwood/barchti}"

echo -e "\nCloning bArchTi from: https://github.com/${BARCHTI_REPO}.git"
rm -rf ~/.local/share/barchti/
git clone "https://github.com/${BARCHTI_REPO}.git" ~/.local/share/barchti >/dev/null

echo -e "\e[32mUsing branch: $BARCHTI_REF\e[0m"
cd ~/.local/share/barchti
git fetch origin "${BARCHTI_REF}" && git checkout "${BARCHTI_REF}"
cd -

echo -e "\nInstallation starting..."
source ~/.local/share/barchti/install.sh
