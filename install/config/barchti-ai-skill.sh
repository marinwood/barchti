# Place in ~/.claude/skills since all tools populate from there as well as their own sources
mkdir -p ~/.claude/skills
ln -s $BARCHTI_PATH/default/barchti-skill ~/.claude/skills/barchti
