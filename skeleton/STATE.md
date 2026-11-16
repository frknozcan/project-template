# STATE — {{PROJECT_NAME}}

> **Purpose:** session-recovery snapshot: what a fresh session needs to resume without reading history.
> **Reader:** agent (second file of every session, after `CLAUDE.md`) · owner.
> **Authority:** none. It records. The repo, `docs/decisions/` and `CLAUDE.md` win on any conflict.
> **Updated when:** overwritten by `/handoff` at the end of every session. Never appended to.
> **Status:** CURRENT as of the date under "Now". Limits: 30 lines below this block, 160 characters per line. Verified facts only. No history: earlier sessions live in `journal/`, open items in `docs/FOLLOWUPS.md`.

## Now
> FILL: 1-4 lines. Date, journal entry number, branch, milestone code, and what is true right now.

## Checks
> FILL: 1-3 lines. Date of the last gate run and the result of each gate; for tests the count and the names of known failures, or "all green".

## Owner verification owed
> FILL: 1 line. Number of open items in `docs/FOLLOWUPS.md` part A and their ids, or "none". The agent never marks these done.

## Open
> FILL: 0-5 lines. Blockers and the most important open findings, each with its FOLLOWUPS id.

## Next
> FILL: 1-2 lines. The exact next step, concrete enough to start without asking.

## Uncommitted
> FILL: 1-2 lines. Suggested commit message for work not yet committed, or "nothing uncommitted".
