> **Purpose:** close a session so that the next one, and the next map refresh, start from true files.
> **Reader:** agent, when the owner types `/handoff` (optionally followed by a milestone code).
> **Authority:** none of its own. It applies `CLAUDE.md` §8 to §11; if they disagree with this file, they win and this file is fixed.
> **Updated when:** the close-out routine changes.
> **Status:** CURRENT.

Close this session. Milestone, if any: $ARGUMENTS.

1. **Journal.** Append an entry to `journal/YYYY-MM-DD.md` for today, in the shape of
   `journal/_TEMPLATE.md`. Create the file if this is the day's first entry.
2. **Follow-ups.** In `docs/FOLLOWUPS.md`: add every check that only the owner can perform to part A,
   and every deferred item or open finding to part B. Delete part B items that this session closed.
   Never delete or close a part A item; the owner does that.
3. **State.** Overwrite `STATE.md` below its header block. Keep the header block and the six section
   headings exactly as they are. Respect the limits in the header block: verified facts only, nothing
   carried over from earlier sessions.
4. **Roadmap.** In `docs/ROADMAP.md`, tick only items that this session finished and whose gates are
   green. An item that still needs an owner check stays unticked.
5. **Architecture.** If modules, boundaries or data contracts changed, update `docs/ARCHITECTURE.md`
   so that it describes the repo as it now is.
6. **Map.** Do not edit `docs/AI_CONTEXT.md`. Check the refresh triggers in
   `docs/AI_CONTEXT.README.md`; if one applies, say so in your reply.
7. **Git.** Never change git state.
8. **Reply** in at most three lines: the title of the journal entry, the suggested commit message,
   and, if step 6 found a trigger, "map refresh due" with the reason.
