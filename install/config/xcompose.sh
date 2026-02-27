# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
# Run barchti-restart-xcompose to apply changes

# Include fast emoji access
include "%H/.local/share/barchti/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$BARCHTI_USER_NAME"
<Multi_key> <space> <e> : "$BARCHTI_USER_EMAIL"
EOF
