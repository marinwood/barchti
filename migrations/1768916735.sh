echo "Fix microphone gain and audio mixing on Asus ROG laptops"

source "$BARCHTI_PATH/install/config/hardware/fix-asus-rog-mic.sh"
source "$BARCHTI_PATH/install/config/hardware/fix-asus-rog-audio-mixer.sh"

if barchti-hw-asus-rog; then
  barchti-restart-pipewire
fi
