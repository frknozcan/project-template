# AI_CONTEXT refresh prompt

> **Purpose:** the one prompt that creates and refreshes `docs/AI_CONTEXT.md` from the disk.
> **Reader:** agent, in a fresh Claude Code session, when the owner says "run the prompt in docs/AI_CONTEXT.refresh.md".
> **Authority:** owns the refresh procedure. `docs/AI_CONTEXT.README.md` owns when to run it.
> **Updated when:** the procedure changes, or the drift hotspots of this project change.
> **Status:** CURRENT.

CONTEXT (self-contained, fresh session). Repo: `{{REPO_PATH}}`. `docs/AI_CONTEXT.md` is the repo map
handed to every new web chat. Bring it back in line with the disk. Do not trust its contents: treat
every line as a claim to re-verify, because catching drift is the whole point. READ-ONLY except for
writing `docs/AI_CONTEXT.md`. Run no build, deploy or pipeline. Do not change git state. Do not
commit.

STEP 0 — first run or refresh?
- If the map still contains unfilled template placeholders (double-brace tokens or FILL blocks), or
  its title has no snapshot date, this is the FIRST RUN: there is no baseline. Skip STEP 1, treat
  nothing as verified, and build every section from the disk in STEP 2.
- Otherwise it is a refresh: continue with STEP 1.

STEP 1 — read the baseline and find what changed, cheaply:
- Read `docs/AI_CONTEXT.md` in full and note its snapshot date (title line).
- Read the change signals since that date: `journal/` entries newer than it; `STATE.md`;
  `git log --oneline` and `git status`. If git is blocked in this session, say so in the report and
  use file modification times instead; do not work around the block.
- The signals tell you WHERE to look. You do not need to re-read the whole repo.
- If `STATE.md` or the newest journal entry is older than the newest change on disk, say so in the
  report: the signals are stale and the result is less reliable.

STEP 2 — re-verify against the disk, focused:
- Every entry a change signal touches: open the real file or directory and confirm the map's line
  (path, one-liner, status). Fix drift.
- Every [A] tag anywhere in the file: try once to promote it to [V] or correct it. Assumptions rot
  fastest.
- New files and directories: add them with a status. Deleted ones: remove them. Renamed ones: update
  the path.
- Areas with no change signal: an existence sweep only. Do not deep-read them.
- A doc whose content contradicts the disk is tagged STALE, with the contradiction in a few words.
- Always re-check this project's drift hotspots:

> FILL: 2-3 bullets: the facts of this project most likely to rot between refreshes, and how to check each one cheaply (a file to open, a value to compare, a command to run). Until this block is filled, re-check the gate commands and the docs index.

STEP 3 — rewrite `docs/AI_CONTEXT.md`:
- Keep the title format, the header block, the legend and the "How we work" section word for word.
- Same sections, same index-not-copy style, same [V] / [A] and CURRENT / STALE / PARKED tags.
- Set the snapshot date in the title to today.
- Stay under 200 lines. If it does not fit, cut detail, not sections: one line per path.
- No to-do list, no backlog, no history. "Current focus" is exactly one line and is the last section.
- No unfilled placeholder may remain. What cannot be verified is written as a claim tagged [A].
- Keep still-true lines verbatim. Touch only what drifted.

REPORT: a short list of what drifted since the last snapshot (what you changed and why), every [A]
you could not resolve, and any change signal that was missing or stale. Nothing else.
