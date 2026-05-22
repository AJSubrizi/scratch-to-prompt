#!/usr/bin/env bash
# Copy canonical skill into .cursor/skills/ for repo clones (project-scoped skill).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DEST="${ROOT}/.cursor/skills/scratch"

mkdir -p "$DEST"
cp -R "${ROOT}/skills/scratch/"* "$DEST/"

echo "Synced project skill to: $DEST"
