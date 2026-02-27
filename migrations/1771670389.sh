echo "Add Logout option to system menu"

barchti-refresh-sddm

if [[ -f /etc/sddm.conf.d/autologin.conf ]]; then
  sudo sed -i 's/^Current=.*/Current=barchti/' /etc/sddm.conf.d/autologin.conf
fi
