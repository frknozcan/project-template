# Optional: permissions file

Adopt when agent sessions should run routine commands without asking each time, and git changes should be blocked by the tool as well as forbidden by `CLAUDE.md` §9.
It allows reading, editing, the three gate commands and read-only git (the map refresh uses `git status` and `git log` as change signals); it denies `gh`, the git commands that change state, and edits under `.claude/`.
Limits: a deny rule matches the plain `git <verb>` form only, so it stops accidents and is not a security boundary; `CLAUDE.md` §9 stays the rule.
To adopt: copy the contents of `files\` into the project root, replace the gate placeholders in `.claude/settings.json` (delete the lines of a gate whose command is "none"), and start a new session. With the acceptance option, add `"Edit(/docs/acceptance/**)"` to the deny list.
Status: the rule forms come from a project file that worked and from the Claude Code permission docs (read 2026-11-16); this exact file has not yet run in a project.
