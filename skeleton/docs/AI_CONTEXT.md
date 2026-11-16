# AI_CONTEXT — {{PROJECT_NAME}} repo map · snapshot {{SNAPSHOT_DATE}}

> **Purpose:** orientation for a web chat that cannot see the disk, so that it can cite real paths. An index of the repo, not a copy of other docs.
> **Reader:** web chat (pasted at the start of every new chat) · owner.
> **Authority:** none. Every line is a claim about the disk as of the snapshot date. The repo, `docs/decisions/` and `CLAUDE.md` win.
> **Updated when:** only by running `docs/AI_CONTEXT.refresh.md`. Triggers and routine: `docs/AI_CONTEXT.README.md`. Never edited by hand or in passing.
> **Status:** CURRENT as of the snapshot date in the title. Limit: 200 lines.

Legend. Claims: **[V]** verified on disk in this snapshot · **[A]** assumed or inferred.
Docs and areas: **CURRENT** maintained and true · **STALE** exists but has drifted, do not plan from it · **PARKED** deliberately on hold.

## What this is
{{PRODUCT_ONE_LINER}}

> FILL: 2-4 lines. The stage of the project, what exists today, and who does what (the owner runs git and all manual verification).

## Stack and constraints
- Stack: {{STACK}} · identifier: {{PACKAGE_ID}}
- Gates: type-check `{{TYPECHECK_COMMAND}}` · tests `{{TEST_COMMAND}}` · lint `{{LINT_COMMAND}}`

> FILL: 4-10 bullets, each tagged [V] or [A]: versions that matter, hard constraints, the last recorded gate results with their date. One line each, with the path that proves it.

## Repo map
> FILL: one table per main area of the repo, with the columns "Path", "What" and "Status". One line per directory or key file. Status is CURRENT, STALE or PARKED, plus [V] or [A]. No file contents, no explanations of how things work.

## Docs index
> FILL: one table with the columns "Path", "Purpose" and "Status": one row for every doc or doc folder in the repo, starting with `CLAUDE.md` and `STATE.md`. A doc missing from disk is removed from this table, not marked.

## How we work
The owner thinks and decides in a web chat that cannot see this repo. The chat writes prompts; the owner runs them in Claude Code on the owner's machine and pastes the report back; the chat checks the report against this map. Claude Code never changes git state; the owner commits.

A prompt written for Claude Code is self-contained and has this shape:
1. Context: a fresh session, the repo path `{{REPO_PATH}}`, the goal in two sentences.
2. Files to read, and files NOT to read.
3. Scope, and what is explicitly out of scope.
4. For a real decision: propose, STOP, implement only after approval.
5. The hypothesis the task rests on, and the line "if the hypothesis is wrong, STOP and report".
6. Claims tagged VERIFIED (with path) or ASSUMED.
7. Acceptance gates: type-check, tests, lint, by their exact commands.
8. No commit, merge or push.
9. The owner's manual verification steps, at the end.
10. One line recommending mode, model and effort.

Cite ids instead of re-explaining: "CLAUDE.md §8", "ROADMAP M2 §3", "decisions 2026-01-31 D2", "FOLLOWUPS #7".

## Current focus
> FILL: exactly one line: what the project is working toward right now. Not a list, not a plan.
