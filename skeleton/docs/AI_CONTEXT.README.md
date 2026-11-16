# AI_CONTEXT: what it is and how to keep it true

> **Purpose:** the routine for `docs/AI_CONTEXT.md`: what the map is, when to refresh it, and how.
> **Reader:** owner · agent (during `/handoff`, to check the triggers).
> **Authority:** owns when and how the map is refreshed.
> **Updated when:** the routine changes.
> **Status:** CURRENT.

## What the map is
A one-file index of this repo for a web chat that cannot see the disk: paths, one line each, a status tag, and one line of current focus. It lets the chat cite real files.

## What it is not
- Not `CLAUDE.md`: that file holds rules for the agent; the map holds orientation for the chat.
- Not a to-do list: open items live in `docs/FOLLOWUPS.md`, the plan in `docs/ROADMAP.md`.
- Not a copy of other docs: it points to them and says whether they are still true.

## When to refresh
- A milestone ends.
- Before opening a new web chat.
- The current web chat's context is full.
- After a structural change: files or directories added, renamed or deleted, or a doc declared dead.

## Precondition
`STATE.md` and the day's journal entry are on disk first (run `/handoff`). The refresh reads them as change signals; if they are stale, it looks in the wrong places.

## How
1. Open a fresh Claude Code session in the repo.
2. Say: `Run the prompt in docs/AI_CONTEXT.refresh.md`.
3. Read the drift report it returns.
4. Paste the new `docs/AI_CONTEXT.md` into the new web chat as its first message.

## Never
- Never edit facts into the map by hand, and never let a task session update it in passing. A map changed outside the refresh carries a snapshot date that lies.
- Never let it grow past 200 lines. A map too long to paste is not read.
