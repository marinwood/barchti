#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Define bArchTi locations
export BARCHTI_PATH="$HOME/.local/share/barchti"
export BARCHTI_INSTALL="$BARCHTI_PATH/install"
export BARCHTI_INSTALL_LOG_FILE="/var/log/barchti-install.log"
export PATH="$BARCHTI_PATH/bin:$PATH"

# Install
source "$BARCHTI_INSTALL/helpers/all.sh"
source "$BARCHTI_INSTALL/preflight/all.sh"
source "$BARCHTI_INSTALL/packaging/all.sh"
source "$BARCHTI_INSTALL/config/all.sh"
source "$BARCHTI_INSTALL/login/all.sh"
source "$BARCHTI_INSTALL/post-install/all.sh"
