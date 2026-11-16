# USAGE — starting and running a project from this template

> **Purpose:** the owner's guide: from an idea to a working project, and how to keep its docs true.
> **Reader:** owner.
> **Authority:** owns the new-project procedure. The files under `skeleton\` win on their own content.
> **Updated when:** the flow, a command or a file path in it changes.
> **Status:** CURRENT. Not yet exercised on a real project.

All commands are PowerShell 5.1. Paths assume the template is at `C:\dev\project-template`.

## 1. Reference the template in a web chat
1. Open a new web chat. Paste the whole of `TEMPLATE_CONTEXT.md` as the first message.
2. Describe the idea. Do the research and take the decisions there: product, stack, what is out of scope, the first milestones.
3. Paste `prompts\new-project-bootstrap.md` into the chat. Ask it to fill every field of the PROJECT BRIEF and to return the complete prompt.
4. Check the target path and the three gate commands yourself. A wrong command there is copied into several files.

## 2. Instantiate
1. Open Claude Code in the folder that will contain the new project (not inside the template) and paste the filled prompt, from the line "CONTEXT" to the end. For a rehearsal, set `MODE = dry-run` first.
2. The run copies `skeleton\`, replaces the tokens, fills what the brief supports, writes the first `docs\AI_CONTEXT.md` (the map that web chats receive), and ends with a table of the placeholders that remain. It never writes to the template and never runs git.
3. Create the repository yourself, in the new project folder:
   ```powershell
   git init -b main
   git add -A
   git commit -m "chore: scaffold from project-template"
   ```
4. Paste the new project's `docs\AI_CONTEXT.md` into the web chat, or into a new one. From now on that file, not `TEMPLATE_CONTEXT.md`, is the chat's map.

## 3. Fill the domain content
List what is left. Run this in the project root:
```powershell
@(Get-Item CLAUDE.md, STATE.md, .gitignore) + @(Get-ChildItem docs, journal, .claude -Recurse -File) | Where-Object { $_.Name -notlike '_TEMPLATE.*' } | Select-String -Pattern '\{\{[A-Z0-9_]+\}\}|FILL:'
```
Fill in this order, because later files point at earlier ones:
1. `CLAUDE.md` §1, §2 and §6: product, decided stack, out of scope. Then §3 to §5 as far as they are known.
2. `docs\ROADMAP.md`: the sequence, and the first two or three milestones in full.
3. `docs\ARCHITECTURE.md`: only what exists or is decided. The rest waits for the first milestones.
4. `.gitignore`: the stack's dependency and build directories.
5. `docs\AI_CONTEXT.refresh.md`: the drift hotspots, once you know what rots in this project.

"Filled" means the block is replaced by content that is true today, or by a plain "none" or "not decided yet". Never fill a block with a guess to make the search go quiet. When everything is filled, the search returns nothing. The `_TEMPLATE` files keep their blocks for good; the search skips them.

## 4. Work
1. **Web chat** (it has the project's pasted `docs\AI_CONTEXT.md`, the map): decide, then have it write a self-contained prompt in the shape given under "How we work" in `docs\AI_CONTEXT.md`.
2. **Claude Code:** paste the prompt into a fresh session. For a roadmap milestone, type `/milestone M0` instead: the agent reads the minimum, writes a plan and stops.
3. **You approve** the plan, or correct it. The agent then implements exactly that plan and runs the gates before and after.
4. **`/handoff`:** the agent writes the journal entry, overwrites `STATE.md`, adds follow-ups, ticks finished roadmap items and suggests a commit message.
5. **You verify by hand** what only you can: `docs\FOLLOWUPS.md` part A lists it. Delete an item there when it passes. When it fails, move it to part B as a finding.
6. **You run git:** commit with the suggested message on a branch named `<milestone-code>-<short-name>`, open the pull request, merge.
7. Paste the agent's report back into the web chat, so that it can check the result against the map.

The agent never commits, never closes your checks, and stops when a premise in the prompt is false on disk. If it did not stop for a plan on a real decision, say so and start again.

## 5. Keep AI_CONTEXT current
Refresh when: a milestone ends · before opening a new web chat · the current chat's context is full · after a structural change (files or directories added, renamed or deleted; a doc declared dead).
1. Make sure `/handoff` has run: `STATE.md` and the day's journal entry must be on disk first.
2. Open a fresh Claude Code session in the project and say: `Run the prompt in docs/AI_CONTEXT.refresh.md`.
3. Read the drift report. Paste the new `docs\AI_CONTEXT.md` into the new web chat as its first message.

Never edit the map by hand, and never let a task session update it in passing. Details: `docs\AI_CONTEXT.README.md` in the project.

## 6. Keep docs honest
- Every doc opens with Purpose · Reader · Authority · Updated when · Status. A doc whose Status line is no longer true is fixed that day, or deleted.
- On a conflict, the order in `CLAUDE.md` §10 decides: your instruction, then `docs\decisions\`, then `CLAUDE.md`, then the roadmap, then plans. Everything else describes or records.
- One fact, one place (`CLAUDE.md` §5). When you find a fact in two places, delete one copy.
- Dead docs are deleted, not parked; git keeps the history. After deleting one, search for its file name and fix every reference:
  ```powershell
  Get-ChildItem -Recurse -File -Include *.md | Select-String -SimpleMatch "the-file-name.md"
  ```
- `STATE.md` stays within its limits: 30 lines below the header block, 160 characters per line. This lists the lines that are too long:
  ```powershell
  Get-Content STATE.md -Encoding UTF8 | Where-Object { $_.Length -gt 160 }
  ```
- A new kind of Markdown file needs your approval first. `CLAUDE.md` §10 lists where each kind goes.

## 7. Feed the template
Run `prompts\template-update.md` when a project taught something the next project should start with:
- a rule you had to add to `CLAUDE.md` that is not about that product;
- a doc or a section that nobody maintained, which is a reason to remove it from the template;
- a step in a prompt that kept producing the same mistake;
- once at the end of a project, as a review.

One lesson per run. The prompt is read-only on the project and proposes the change before making it.

## Optional parts
`skeleton\_optional\acceptance\` holds per-milestone scripts whose exit code is the verdict on "done". `skeleton\_optional\permissions\` holds a permissions file that allows read-only git and denies git changes. Name them in the OPTIONS field of the brief, or adopt one later by following the README in its folder.
