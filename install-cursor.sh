#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
DEST="${HOME}/.cursor/skills/scratch"

mkdir -p "$DEST"
cp -R "${ROOT}/skills/scratch/"* "$DEST/"

echo "Installed Scratch to Prompt (Cursor) to: $DEST"
echo "Restart Cursor or start a new Agent chat, then invoke with @scratch or by name."
