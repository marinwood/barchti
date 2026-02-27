# Install all base packages
mapfile -t packages < <(grep -v '^#' "$BARCHTI_INSTALL/barchti-base.packages" | grep -v '^$')
barchti-pkg-add "${packages[@]}"
