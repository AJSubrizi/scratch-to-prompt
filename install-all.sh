#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"

"${ROOT}/install.sh"
"${ROOT}/install-cursor.sh"
"${ROOT}/scripts/sync-project-skill.sh"

echo "Done: Claude Code (~/.claude/skills/scratch), Cursor user (~/.cursor/skills/scratch), project (.cursor/skills/scratch)."
