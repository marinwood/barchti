# Set identification from install inputs
if [[ -n ${BARCHTI_USER_NAME//[[:space:]]/} ]]; then
  git config --global user.name "$BARCHTI_USER_NAME"
fi

if [[ -n ${BARCHTI_USER_EMAIL//[[:space:]]/} ]]; then
  git config --global user.email "$BARCHTI_USER_EMAIL"
fi
