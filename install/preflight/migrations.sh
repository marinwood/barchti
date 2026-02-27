BARCHTI_MIGRATIONS_STATE_PATH=~/.local/state/barchti/migrations
mkdir -p $BARCHTI_MIGRATIONS_STATE_PATH

for file in ~/.local/share/barchti/migrations/*.sh; do
  touch "$BARCHTI_MIGRATIONS_STATE_PATH/$(basename "$file")"
done
