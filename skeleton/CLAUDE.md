# CLAUDE.md — {{PROJECT_NAME}}

> **Purpose:** the rules every agent session follows in this repo: what the product is, what is decided, how work is done and verified.
> **Reader:** agent (read in full at the start of every session) · owner.
> **Authority:** wins on working rules, environment and scope. Loses to a record in `docs/decisions/` and to the owner's instruction in the current session.
> **Updated when:** a rule changes. It holds rules, not history: the reason for a change goes into a decision record, the event into the journal. No dated change notes here.
> **Status:** CURRENT. Scaffolded {{SCAFFOLD_DATE}}.

Sections are numbered and cited as "CLAUDE.md §N" by prompts, docs and code comments. Never renumber.
A section that no longer applies keeps its number and says RETIRED in one line.
The owner and the agent talk in {{CHAT_LANGUAGE}}. Everything written to disk is English: code, comments, docs, journal, commit messages.

## 1. Product in one sentence
{{PRODUCT_ONE_LINER}}

> FILL: 2-4 lines. Who uses it, what they get, what makes it this product and not a generic one. No feature list.

## 2. Platform and stack (decided, do not reopen)
- Stack: {{STACK}}
- Package / app identifier: {{PACKAGE_ID}}

> FILL: 3-8 bullets. Each a decided platform or stack choice with a one-clause reason. A choice listed here is closed; reopening it needs a decision record.

## 3. Architecture rules
`docs/ARCHITECTURE.md` is the map of what exists. This section holds only the rules the map must obey.

> FILL: 1-3 rules, each one sentence plus one sentence of why. Only rules whose violation is a defect, not a style preference.

## 4. Domain traps (mandatory)
> FILL: 0-6 bullets. Mistakes this domain invites and the rule that prevents each one. Verified traps only; write "none recorded yet" until the first one is found.

## 5. Single sources
One fact lives in one place. Everything else points to it and never repeats the value.

> FILL: a table with the columns "Fact" and "Single source (file, and symbol or section)". Start with 3-6 rows: configuration values, data contracts, names and identifiers, version numbers. Add a row whenever a fact is found in two places.

## 6. Out of scope (do not build, do not suggest)
> FILL: 3-10 bullets. What this version deliberately does not do. An item leaves this list only through a decision record.

## 7. Environment (verified on this machine)
- Windows, PowerShell 5.1. Chain commands with `;` and test `$?` or `$LASTEXITCODE`. The `&&` and `||` operators do not exist.
- Check `$LASTEXITCODE` explicitly after every native executable.
- Any `.ps1` in this repo is ASCII-only.

> FILL: project-specific traps as they are verified, one bullet each: what happened, and what to do instead. Record a trap only after it has been observed.

## 8. Working rules
1. **Plan first.** For anything beyond a mechanical edit: read, write a numbered plan, STOP, wait for the owner's approval. The approved plan is copied into the journal before the first edit.
2. **Stay in scope.** Do what the plan says. Anything else worth doing becomes a line in `docs/FOLLOWUPS.md`, not a change.
3. **Diagnose before fixing.** State the cause and the evidence for it before changing code. If a premise from the prompt or the plan turns out false on disk, STOP and report it; do not adapt silently.
4. **Check identifiers on disk.** A file, function, flag or id named in a prompt, in a doc or from memory is a claim. Open it before relying on it.
5. **Gates.** Type-check: `{{TYPECHECK_COMMAND}}`. Tests: `{{TEST_COMMAND}}`. Lint: `{{LINT_COMMAND}}`. Run them before the first edit and record the result as the baseline. Run them again at the end. Any failure at the end must have been in the baseline under the same name; compare names, not counts.
6. **A guard must be able to fail.** When you add a test or a check, show once that it goes red when the thing it protects is broken.
7. **No silent fallbacks.** Code that catches a failure reports the real error. A default that hides a failure is a defect. Do not add a path that nothing triggers.
8. **Findings are recorded, never hidden.** Anything red, flaky, skipped or surprising goes into the journal entry as a numbered FINDING, and into `docs/FOLLOWUPS.md` if it stays open.
9. **Only the owner closes owner checks.** What needs the owner's eyes, hands, device or account is listed in `docs/FOLLOWUPS.md` part A. Never mark such an item done and never describe it as verified.
10. **Dependencies need a reason.** A new dependency is added only with a one-line rationale in the journal entry.
11. **Corrections are visible.** A wrong statement in a doc is replaced, and the journal entry says what was wrong. Never edit silently.

> FILL: 0-3 further gates this project needs, one per line, each with its name and exact command. Write "no further gates" if there are none.

## 9. Git
- The agent never changes git state and never runs `gh`: no add, commit, push, pull, merge, rebase, reset, checkout, stash or clean.
- Read-only git is allowed for orientation: `git status`, `git log`, `git diff`, `git ls-files`.
- The owner does all git. Branches are named `<milestone-code>-<short-name>` and merge into `{{MAIN_BRANCH}}` through a pull request.
- Every journal entry ends with one suggested commit message for its work.
- Workflow files (this file, `STATE.md`, `docs/`, `journal/`, `.claude/commands/`) are committed. `.gitignore` records that choice; this line must agree with it.

## 10. Docs: where things live and who wins
On a conflict the higher rank wins, and the conflict is written into the journal entry, never merged silently.

| Rank | Doc | It is the authority for |
|---|---|---|
| 1 | the owner's instruction in this session | anything it states |
| 2 | `docs/decisions/` (newest record first) | what the product is and does |
| 3 | `CLAUDE.md` | how work is done, environment, scope |
| 4 | `docs/ROADMAP.md` | order, scope and exit criteria of milestones |
| 5 | `docs/plans/` | how one approved piece of work is built |
| none | `docs/ARCHITECTURE.md` | it describes what exists |
| none | `STATE.md`, `journal/`, `docs/FOLLOWUPS.md`, `docs/reports/` | they record |
| none | `docs/AI_CONTEXT.md` | it is a map for the web chat |

The repo itself beats every doc about what currently exists. A doc that disagrees with the disk is wrong, and is fixed or deleted.

Where a new file goes:

| Kind | Path |
|---|---|
| Decision the owner made | `docs/decisions/YYYY-MM-DD-<slug>.md` |
| Plan or spec, before building | `docs/plans/<slug>.md` |
| One-off diagnosis, audit or verification run | `docs/reports/YYYY-MM-DD-<slug>/REPORT.md` |
| Prompt meant to be run again | `docs/prompts/<verb>-<object>.md` |
| Session record | `journal/YYYY-MM-DD.md` |

A Markdown file of any other kind needs the owner's approval first. A doc nobody maintains is deleted, not kept; git keeps the history. When a doc is deleted or superseded, search the repo for its file name and fix every reference in the same change.

## 11. Session protocol
- **Start:** read this file and `STATE.md`. Then read what the prompt names, and only that.
- **During:** the rules of §8.
- **End:** run `/handoff`. A session that changed anything and wrote no journal entry is not finished.
