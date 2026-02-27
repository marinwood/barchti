echo "Change to openai-codex instead of openai-codex-bin"

if barchti-pkg-present openai-codex-bin; then
    barchti-pkg-drop openai-codex-bin
    barchti-pkg-add openai-codex
fi
