# journal/

> **Purpose:** the append-only record of what each session did, decided, verified and left open.
> **Reader:** agent (only when a prompt or `STATE.md` points to an entry) · owner · the map refresh, as a change signal.
> **Authority:** none. It is history. It never overrides a decision record or `CLAUDE.md`.
> **Updated when:** every session that changes anything appends one entry, written by `/handoff`.
> **Status:** CURRENT.

## Naming
- One file per day: `journal/YYYY-MM-DD.md`, starting with the line `# Journal — YYYY-MM-DD`.
- One `## Entry N — title` per session, numbered from 1 within the day. Cite as "journal 2026-01-31 entry 2".
- A new entry is copied from `_TEMPLATE.md`.

## Rules
- Append only. An old entry is never rewritten. A mistake in one is corrected by a dated note added under it.
- An entry holds: where the task came from, the plan as approved, the gate baseline, what was built, the gate results, findings, what the owner must verify, and a suggested commit message.
- An entry does not hold the current state (that is `STATE.md`) or the list of open items (that is `docs/FOLLOWUPS.md`); it names the ids it added there.
- Findings are numbered F1, F2, ... within the entry. A finding that stays open also gets a FOLLOWUPS id.
- Evidence means commands and their results, not adjectives. Say what was not run.
