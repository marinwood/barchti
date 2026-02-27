# Show installation environment variables
gum log --level info "Installation Environment:"

env | grep -E "^(BARCHTI_CHROOT_INSTALL|BARCHTI_ONLINE_INSTALL|BARCHTI_USER_NAME|BARCHTI_USER_EMAIL|USER|HOME|BARCHTI_REPO|BARCHTI_REF|BARCHTI_PATH)=" | sort | while IFS= read -r var; do
  gum log --level info "  $var"
done
