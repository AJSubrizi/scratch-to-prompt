#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
DEST="${HOME}/.claude/skills/scratch"

mkdir -p "$DEST"
cp -R "${ROOT}/skills/scratch/"* "$DEST/"

echo "Installed Scratch to Prompt to: $DEST"
echo "Restart Claude Code, then try: /scratch <your idea>"
