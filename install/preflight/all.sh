source $BARCHTI_INSTALL/preflight/guard.sh
source $BARCHTI_INSTALL/preflight/begin.sh
run_logged $BARCHTI_INSTALL/preflight/show-env.sh
run_logged $BARCHTI_INSTALL/preflight/pacman.sh
run_logged $BARCHTI_INSTALL/preflight/migrations.sh
run_logged $BARCHTI_INSTALL/preflight/first-run-mode.sh
run_logged $BARCHTI_INSTALL/preflight/disable-mkinitcpio.sh
