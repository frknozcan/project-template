# docs/plans/

> **Purpose:** plans and specs: how one approved piece of work will be built, written before building.
> **Reader:** agent (the plan a prompt names) · owner · web chat, through the map.
> **Authority:** a plan wins on how its own piece of work is built. It loses to `docs/decisions/`, `CLAUDE.md` and `docs/ROADMAP.md`.
> **Updated when:** while its work is in progress. After that a plan is frozen or deleted; see "Lifecycle".
> **Status:** CURRENT.

## What belongs here
- A plan or spec for work too large to hold in one journal entry: several sessions, a change to a data format, or a choice between designs.
- Not here: decisions (`docs/decisions/`), one-off diagnoses and audits (`docs/reports/`), prompts (`docs/prompts/`), and drafts or variants of any kind.

## Naming
- `docs/plans/<slug>.md`: lower-case words joined by hyphens, named after the thing being built. No dates, no version suffixes, no "new" or "final".
- Copied from `_TEMPLATE.md`. The Status line in the header is mandatory.

## Lifecycle
| Status | Meaning | What happens to the file |
|---|---|---|
| DRAFT | being written, not approved | may change freely |
| APPROVED | the owner approved it; work may start | changes need the owner |
| SHIPPED | built and verified | cut down to what is still true and kept as the design record of that feature |
| superseded or abandoned | another plan replaced it, or the work was dropped | deleted, and every reference to it fixed in the same change |

A file in this folder that is neither in progress nor a true record of something shipped is a defect. At the end of each milestone every file here is either SHIPPED and true, or deleted.
