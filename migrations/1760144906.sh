echo "Change barchti-screenrecord to use gpu-screen-recorder"
barchti-pkg-drop wf-recorder wl-screenrec

# Add slurp in case it hadn't been picked up from an old migration
barchti-pkg-add slurp gpu-screen-recorder
