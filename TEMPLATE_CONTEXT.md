# TEMPLATE_CONTEXT — project-template map · snapshot 2026-11-16

> **Purpose:** orientation for a web chat that cannot see the disk: what the project template contains, so that the chat can plan a new project and fill the bootstrap brief.
> **Reader:** web chat (pasted as the first message of a new-project chat) · owner.
> **Authority:** owns the token list and the description of the tree. Each file wins on its own content.
> **Updated when:** a file is added or removed, a token changes, or the working loop changes. `prompts\template-update.md` keeps it in step.
> **Status:** CURRENT as of the snapshot date in the title.

## What this is
The owner's master project template, at `C:\dev\project-template`. A new project is created by copying `skeleton\` and filling it. The template is domain-neutral and stack-neutral: it carries workflow, not product. The owner is a solo developer on Windows with PowerShell 5.1 who works in two places: this web chat, which cannot see the disk, and Claude Code on the machine, which runs the prompts this chat writes.

## Template files
| Path | What |
|---|---|
| `README.md` | what the template is |
| `USAGE.md` | the owner's guide in seven steps: reference, instantiate, fill, work, refresh the map, keep docs honest, feed the template |
| `TEMPLATE_CONTEXT.md` | this map |
| `prompts\new-project-bootstrap.md` | Claude Code prompt with a PROJECT BRIEF block; creates the project |
| `prompts\template-update.md` | Claude Code prompt; folds one lesson from a project back into the template |
| `skeleton\` | what a project receives (next table) |
| `skeleton\_optional\acceptance\` | opt-in: one script per milestone whose exit code is the verdict on "done" |
| `skeleton\_optional\permissions\` | opt-in: a permissions file for agent sessions; allows read-only git, denies git changes |
| `_provenance\` | where the template came from; never copied into a project |

## What a new project receives
| Path in the project | What | Written by |
|---|---|---|
| `CLAUDE.md` | constitution in 11 numbered sections, cited as "CLAUDE.md §N": product, stack, architecture rules, domain traps, single sources, out of scope, environment, working rules, git, doc authority, session protocol | owner; agent on request |
| `STATE.md` | session-recovery snapshot, at most 30 lines, overwritten at every handoff | agent |
| `.gitignore` | records the choice "workflow files committed or kept local" (default: committed) | owner |
| `.claude\commands\milestone.md` | `/milestone <code>`: read the minimum, plan, STOP for approval | fixed |
| `.claude\commands\handoff.md` | `/handoff`: journal entry, state, follow-ups, roadmap ticks, map-refresh check | fixed |
| `journal\YYYY-MM-DD.md` | append-only session record, one entry per session; rules in `journal\README.md`, entry shape in `journal\_TEMPLATE.md` | agent |
| `docs\AI_CONTEXT.md` | the map a web chat receives: index of paths with status tags, at most 200 lines, one-line current focus | the refresh prompt only |
| `docs\AI_CONTEXT.refresh.md` | the prompt that builds and refreshes the map from disk, first run included | owner (drift hotspots) |
| `docs\AI_CONTEXT.README.md` | when and how to refresh the map | fixed |
| `docs\ARCHITECTURE.md` | living map of modules, boundaries and data contracts; describes, never decides | agent, at handoff |
| `docs\ROADMAP.md` | milestones with stable codes (M0, M1, ...), numbered items and exit criteria; cited as "ROADMAP M2 §3" | owner; agent ticks items |
| `docs\FOLLOWUPS.md` | part A: verification only the owner can do; part B: deferred work and open findings; ids `#N` | agent adds; owner closes part A |
| `docs\decisions\` | dated decision records, the highest authority among docs; decisions numbered D1, D2, ... | agent drafts; owner approves |
| `docs\plans\` | plans and specs written before building: DRAFT, APPROVED, SHIPPED, otherwise deleted | agent |
| `docs\reports\` | dated one-off diagnoses, audits and verification runs, each in its own folder with its evidence | agent |
| `docs\prompts\` | prompts meant to be run again | owner, web chat |

Authority on a conflict, highest first: the owner's instruction in the session · `docs\decisions\` · `CLAUDE.md` · `docs\ROADMAP.md` · `docs\plans\`. Every other doc describes or records. The repo itself wins on what currently exists.

## Tokens
| Token | Meaning | Brief field |
|---|---|---|
| `{{PROJECT_NAME}}` | display name | PROJECT_NAME |
| `{{REPO_PATH}}` | absolute path of the project repo | TARGET_PATH |
| `{{PRODUCT_ONE_LINER}}` | one sentence: what it is and for whom | PRODUCT_ONE_LINER |
| `{{STACK}}` | one-line stack summary | STACK |
| `{{PACKAGE_ID}}` | package, bundle or app identifier, or "none" | PACKAGE_ID |
| `{{TYPECHECK_COMMAND}}` | exact gate command, or "none" | TYPECHECK_COMMAND |
| `{{TEST_COMMAND}}` | exact gate command, or "none" | TEST_COMMAND |
| `{{LINT_COMMAND}}` | exact gate command, or "none" | LINT_COMMAND |
| `{{MAIN_BRANCH}}` | branch that pull requests target | MAIN_BRANCH |
| `{{CHAT_LANGUAGE}}` | language of the owner–agent conversation; files stay English | CHAT_LANGUAGE |
| `{{SNAPSHOT_DATE}}` | date of the map snapshot, in the title of `docs\AI_CONTEXT.md` | set by the run |
| `{{SCAFFOLD_DATE}}` | date the project was created | set by the run |

Prose that is not a single value is left as a block that starts with `> FILL:` and says what goes there, how long, and what kind of content. The bootstrap fills the blocks the brief supports and lists the rest for the owner.

## Working loop
1. Web chat: decide, then write one self-contained prompt.
2. Claude Code: the owner pastes it, or types `/milestone <code>`. The agent plans and stops; the owner approves; the agent implements and runs the gates before and after.
3. `/handoff`: journal entry, `STATE.md`, follow-ups, roadmap ticks, suggested commit message.
4. Owner: manual verification, all git, then pastes the report back into the web chat.
5. Map refresh at a milestone end, before a new chat, when the chat is full, or after a structural change. The new map is pasted into the new chat.

## Prompt shape (what this chat writes for Claude Code)
1. Context: a fresh session, the repo path, the goal in two sentences.
2. Files to read, and files NOT to read.
3. Scope, and what is explicitly out of scope.
4. For a real decision: propose, STOP, implement only after approval.
5. The hypothesis the task rests on, and the line "if the hypothesis is wrong, STOP and report".
6. Claims tagged VERIFIED (with path) or ASSUMED.
7. Acceptance gates: type-check, tests, lint, by their exact commands.
8. No commit, merge or push.
9. The owner's manual verification steps, at the end.
10. One line recommending mode, model and effort.

Cite ids instead of re-explaining: "CLAUDE.md §8", "ROADMAP M2 §3", "decisions 2026-01-31 D2", "FOLLOWUPS #7". The same shape is the "How we work" section of every project's `docs\AI_CONTEXT.md`, which is its single source inside a project.

## Starting a new project from this chat
1. Settle with the owner: the product in one sentence and in one paragraph; the stack; the identifier; the exact type-check, test and lint commands; architecture rules, if any are already certain; what is out of scope; the first two or three milestones with exit criteria; known constraints, each marked VERIFIED or ASSUMED.
2. Ask the owner to paste `prompts\new-project-bootstrap.md`. Fill every field of its PROJECT BRIEF. Leave nothing for the agent to guess: a field you cannot fill is a question for the owner.
3. Return the complete prompt. The owner runs it; the run reports the placeholders that remain.

## Current focus
Template built 2026-11-16 from its first source project; not yet used to start a project.
