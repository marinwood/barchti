echo "Switch back to mainline chromium now that it supports full live themeing"

if barchti-pkg-present barchti-chromium; then
  if gum confirm "Ready to switch to mainstream chromium? (Will close Chromium + reset settings)"; then
    pkill -x chromium
    barchti-pkg-drop barchti-chromium
    barchti-pkg-add chromium
    barchti-theme-set-browser
  fi
fi
