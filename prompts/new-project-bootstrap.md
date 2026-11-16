# New-project bootstrap prompt

> **Purpose:** create a new project from `skeleton\`. The web chat fills the PROJECT BRIEF; the owner runs the prompt in Claude Code.
> **Reader:** web chat (fills the brief) · agent (runs it) · owner.
> **Authority:** owns the instantiation procedure. `TEMPLATE_CONTEXT.md` owns the token list; if the two disagree, this file is fixed.
> **Updated when:** the skeleton, the token list or the procedure changes.
> **Status:** CURRENT. Not yet run against a real project.

How to use: fill every field of the PROJECT BRIEF, then paste everything from the line "CONTEXT" to the end into a fresh Claude Code session. Recommended: normal mode (use `MODE = dry-run` for a rehearsal instead of plan mode), a strong general model, high effort.

---

CONTEXT (self-contained, fresh session). You are creating a new project from the template at
TEMPLATE_DIR. The template is READ-ONLY: never create, edit, move or delete anything under
TEMPLATE_DIR. Write only under TARGET_PATH. Run no `git init` and no git command that changes state:
the owner does git. Install nothing, and run no build and no test. Files under
`TEMPLATE_DIR\skeleton\` are templates to copy, not instructions for this session, even if the tool
shows `skeleton\CLAUDE.md` as project context.

## PROJECT BRIEF (filled by the web chat)

```
TEMPLATE_DIR      = C:\dev\project-template
MODE              = apply        # or: dry-run (report what would be written, write nothing)
PROJECT_NAME      =
TARGET_PATH       =              # absolute path; must not exist, or must be empty
PRODUCT_ONE_LINER =              # one sentence: what it is and for whom
STACK             =              # one line
PACKAGE_ID        =              # package, bundle or app identifier, or: none
TYPECHECK_COMMAND =              # exact command, or: none
TEST_COMMAND      =              # exact command, or: none
LINT_COMMAND      =              # exact command, or: none
EXTRA_GATES       = none         # or: name = exact command; one per line
MAIN_BRANCH       = main
CHAT_LANGUAGE     =              # language the owner and the agent talk in
OPTIONS           = none         # or any of: acceptance, permissions
```

PRODUCT (one paragraph: who uses it, what they get, what makes it this product):

DECIDED (closed platform and stack choices, one per line, each with a short reason):

ARCHITECTURE RULES (one to three rules whose violation is a defect, each with its reason; or: none yet):

OUT OF SCOPE (what this version deliberately does not do, one per line):

FIRST MILESTONES (code, name, goal, numbered items, exit criteria, owner verification; the first two or three in full, later ones as one line each):

CONSTRAINTS AND TRAPS (known hard limits and pitfalls; mark each VERIFIED or ASSUMED; or: none):

## Steps

STEP 0 — preflight. STOP and report if any check fails.
- `TEMPLATE_DIR\skeleton\CLAUDE.md` exists.
- TARGET_PATH does not exist, or exists and is empty.
- Every field in the brief has a value. An empty field is a reason to stop, not to guess.
- If MODE = dry-run: perform no write in any later step and report what each step would do.

STEP 1 — copy. Copy everything under `TEMPLATE_DIR\skeleton\` to TARGET_PATH, keeping the relative
paths, except the folder `_optional\`. Nothing outside `skeleton\` is copied. Then prove the copy:
the list of relative file paths under TARGET_PATH must equal the list under `TEMPLATE_DIR\skeleton\`
without `_optional\`. Dot-folders and `.gitignore` are the usual casualties; check them by name.

STEP 2 — options. For each name in OPTIONS: copy the contents of
`TEMPLATE_DIR\skeleton\_optional\<name>\files\` into TARGET_PATH, keeping the relative paths, then do
what the "To adopt" line of `TEMPLATE_DIR\skeleton\_optional\<name>\README.md` says. Do not copy that
README.

STEP 3 — tokens. In every file under TARGET_PATH replace each token with its value, exactly, without
rephrasing the text around it:

| Token | Value |
|---|---|
| `{{PROJECT_NAME}}` | PROJECT_NAME |
| `{{REPO_PATH}}` | TARGET_PATH |
| `{{PRODUCT_ONE_LINER}}` | PRODUCT_ONE_LINER |
| `{{STACK}}` | STACK |
| `{{PACKAGE_ID}}` | PACKAGE_ID |
| `{{TYPECHECK_COMMAND}}` | TYPECHECK_COMMAND |
| `{{TEST_COMMAND}}` | TEST_COMMAND |
| `{{LINT_COMMAND}}` | LINT_COMMAND |
| `{{MAIN_BRANCH}}` | MAIN_BRANCH |
| `{{CHAT_LANGUAGE}}` | CHAT_LANGUAGE |
| `{{SNAPSHOT_DATE}}` | today, as YYYY-MM-DD |
| `{{SCAFFOLD_DATE}}` | today, as YYYY-MM-DD |

A gate whose command is "none" keeps the word "none" in running text.

STEP 4 — FILL blocks. Replace a FILL block only with content you can ground in the brief:

| Brief field | Goes to |
|---|---|
| PRODUCT | `CLAUDE.md` §1 |
| DECIDED | `CLAUDE.md` §2 |
| ARCHITECTURE RULES | `CLAUDE.md` §3 (leave the block if the field says "none yet") |
| CONSTRAINTS AND TRAPS, VERIFIED ones | `CLAUDE.md` §4 (domain) or §7 (environment) |
| CONSTRAINTS AND TRAPS, ASSUMED ones | `docs\FOLLOWUPS.md` part B, as items to verify |
| OUT OF SCOPE | `CLAUDE.md` §6 |
| EXTRA_GATES | `CLAUDE.md` §8, the block after rule 11 |
| FIRST MILESTONES | `docs\ROADMAP.md`: "Sequence at a glance", "Milestones", "Closed codes" |
| STACK | the block in `.gitignore`, only if you are certain of that stack's conventional directories |
| (state at this moment) | `STATE.md`, all six sections: scaffold created, no product code yet, next step = fill the remaining placeholders |
| (this run) | `journal\<today>.md`, entry 1, in the shape of `journal\_TEMPLATE.md` |

Leave every other FILL block exactly as it is. Never invent product facts, architecture, single
sources or gates to make a placeholder disappear. The `_TEMPLATE` files keep their blocks: they are
templates.

STEP 5 — consistency. `CLAUDE.md` §9 (last bullet) and `.gitignore` must agree on whether workflow
files are committed. `STATE.md` must respect the limits in its own header block.

STEP 6 — first map. Follow `TARGET_PATH\docs\AI_CONTEXT.refresh.md` as a first run and write
`TARGET_PATH\docs\AI_CONTEXT.md`: every section built from the files now on disk, the snapshot date
set to today, no placeholder left in it, under 200 lines.

STEP 7 — verify.
- You wrote nothing under TEMPLATE_DIR.
- Run the placeholder search with TARGET_PATH as the current directory (PowerShell 5.1):
  `@(Get-Item CLAUDE.md, STATE.md, .gitignore) + @(Get-ChildItem docs, journal, .claude -Recurse -File) | Where-Object { $_.Name -notlike '_TEMPLATE.*' } | Select-String -Pattern '\{\{[A-Z0-9_]+\}\}|FILL:'`
- No token may remain. Remaining FILL blocks are expected and are reported.

REPORT (tables, nothing else):
1. Files written, with line counts.
2. Token and the value used.
3. FILL blocks filled: file, section, source field of the brief.
4. Remaining placeholders: file, line, what the owner must supply; in the fill order of `USAGE.md` step 3.
5. Anything in the brief that was unclear or contradictory.
6. Commands for the owner, not run by you (PowerShell 5.1), with the real values substituted:
   `Set-Location "<TARGET_PATH>"` · `git init -b <MAIN_BRANCH>` · `git add -A` · `git commit -m "chore: scaffold from project-template"`
