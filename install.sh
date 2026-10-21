#!/bin/bash
# Installs the skills, CLAUDE.md and SessionStart hook into ~/.claude.
# Safe to re-run: an existing ~/.claude/CLAUDE.md that differs is backed up first.
# Registering the hook in ~/.claude/settings.json is a separate step (see README).

set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

# 1. Skills
mkdir -p "$CLAUDE_DIR/skills"
for dir in "$REPO_DIR"/skills/*/; do
  name="$(basename "$dir")"
  rm -rf "$CLAUDE_DIR/skills/$name"
  cp -R "$dir" "$CLAUDE_DIR/skills/$name"
  echo "Installed skill: $name"
done

# 2. CLAUDE.md
target="$CLAUDE_DIR/CLAUDE.md"
if [ -f "$target" ] && ! cmp -s "$REPO_DIR/CLAUDE.md" "$target"; then
  backup="$target.backup-$(date +%Y%m%d-%H%M%S)"
  cp "$target" "$backup"
  echo "Existing CLAUDE.md backed up to: $backup"
fi
cp "$REPO_DIR/CLAUDE.md" "$target"
echo "Installed: $target"

# 3. SessionStart hook script
mkdir -p "$CLAUDE_DIR/hooks"
cp "$REPO_DIR/hooks/session-start.sh" "$CLAUDE_DIR/hooks/session-start.sh"
chmod +x "$CLAUDE_DIR/hooks/session-start.sh"
echo "Installed: $CLAUDE_DIR/hooks/session-start.sh"

echo "Done."
