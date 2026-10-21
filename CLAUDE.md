# Global Instructions for Claude

These rules apply to every session and every project.

## Required skills
I have five enterprise-development skills installed. They are **mandatory**, not optional:

| Skill | You MUST use it when... |
|---|---|
| `ux-design` | building or changing anything a user sees or interacts with |
| `accessibility` | writing or reviewing any UI code (always together with `ux-design`) |
| `security` | touching input, auth, secrets, data, APIs, dependencies, or before any commit/deploy |
| `code-quality-testing` | writing, changing, debugging, or reviewing any code, and before saying a task is done |
| `git-workflow` | doing anything with git or GitHub, and at the start of any coding task in a repo |

## How to work
1. At the start of a task, say which skills apply and load them before writing code.
2. Follow each skill's rules while working.
3. Before saying a task is done, go through the "Before you say you're done" checklist of every skill you used, and show me the result.
4. If you skip a checklist item, say which one and why. Never claim something is done, tested, secure, or accessible without checking.

## General
- Ask me when requirements are unclear instead of guessing.
- Ask before pushing, merging, deleting, or anything hard to undo.
- Explain what you did in plain language. I come from a UX/product background and am learning engineering.
