#!/bin/bash
# SessionStart hook: runs every time a Claude Code session starts.
# Whatever this prints is added to Claude's context, so the skills can't be forgotten.

SKILLS_DIR="$HOME/.claude/skills"

echo "=== ENTERPRISE SKILLS ACTIVE ==="
echo "Installed skills:"
for dir in "$SKILLS_DIR"/*/; do
  [ -f "$dir/SKILL.md" ] && echo "  - $(basename "$dir")"
done
echo ""
echo "Reminder: follow the 'Required skills' rules in CLAUDE.md."
echo "Load the relevant skills before starting work, and run each skill's"
echo "'Before you say you're done' checklist before finishing any task."
echo "================================"
