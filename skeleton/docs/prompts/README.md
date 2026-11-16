# docs/prompts/

> **Purpose:** prompts that are meant to be run again, kept where the owner and the web chat can find them.
> **Reader:** owner (to paste, or to name in a session) · agent (when told to run one) · web chat, through the map.
> **Authority:** a stored prompt owns its own procedure. It loses to `CLAUDE.md` on every working rule.
> **Updated when:** a stored prompt is added, changed after a run showed a flaw, or deleted.
> **Status:** CURRENT.

## What belongs here
- A prompt that will be run more than once, with different parameters or at different times.
- Not here: a prompt that runs once. Its plan is recorded in the journal entry of the session that ran it.
- Never here: drafts and variants. One file per prompt, improved in place.
- The map refresh prompt stays at `docs/AI_CONTEXT.refresh.md`, next to the file it writes.

## Naming
- `docs/prompts/<verb>-<object>.md`: lower-case words joined by hyphens.

## Shape of a stored prompt
- The header block that every doc has, then the prompt text.
- A parameter block at the top for what varies between runs, with a dry-run mode when the prompt writes files.
- Otherwise the prompt shape described under "How we work" in `docs/AI_CONTEXT.md`. That section is the single source of the shape; do not restate it here.
- The Status line records the date of the last run. A stored prompt that was not run for two milestones is deleted.
