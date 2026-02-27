# Overwrite parts of the barchti-menu with user-specific submenus.
# See $BARCHTI_PATH/bin/barchti-menu for functions that can be overwritten.
#
# WARNING: Overwritten functions will obviously not be updated when bArchTi changes.
#
# Example of minimal system menu:
#
# show_system_menu() {
#   case $(menu "System" "  Lock\n󰐥  Shutdown") in
#   *Lock*) barchti-lock-screen ;;
#   *Shutdown*) barchti-system-shutdown ;;
#   *) back_to show_main_menu ;;
#   esac
# }
#
# Example of overriding just the about menu action: (Using zsh instead of bash (default))
#
# show_about() {
#   exec barchti-launch-or-focus-tui "zsh -c 'fastfetch; read -k 1'"
# }
