# Week-1-Claude-Skills
Week-1-Claude-Skills

## How to install

1. From the repo folder, run the installer. It copies the five skills, `CLAUDE.md` and the SessionStart hook into `~/.claude`. If you already have a different `~/.claude/CLAUDE.md`, it's backed up first.

   ```bash
   ./install.sh
   ```

2. The first time only, register the hook by adding this to `~/.claude/settings.json`, merged with any settings already there:

   ```json
   {
     "hooks": {
       "SessionStart": [
         {
           "hooks": [
             { "type": "command", "command": "~/.claude/hooks/session-start.sh" }
           ]
         }
       ]
     }
   }
   ```

3. Start a new Claude Code session. The hook lists the installed skills at the start of each session.

To update after editing a skill, run `./install.sh` again.
