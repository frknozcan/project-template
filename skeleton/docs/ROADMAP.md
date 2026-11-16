# ROADMAP — {{PROJECT_NAME}}

> **Purpose:** what gets built, in which order, and when each milestone counts as done.
> **Reader:** agent (the section of the milestone at hand, through `/milestone`) · owner · web chat, through the map.
> **Authority:** wins on order, scope and exit criteria. Loses to `docs/decisions/` and `CLAUDE.md`.
> **Updated when:** the owner changes order or scope; `/handoff` ticks finished items.
> **Status:** CURRENT. It is not a status report: where the project stands is in `STATE.md`.

## Rules
- Every milestone has a stable code (M0, M1, ...) and numbered items. Prompts cite them, for example "ROADMAP M2 §3", instead of restating scope.
- A code is never reused. A finished or dropped milestone keeps its code under "Closed codes".
- A checkbox is ticked only for finished work whose gates are green. An item that needs an owner check is ticked after the owner confirms it.
- Exit criteria are observable: a command and its expected result, or an owner check and what the owner should see.
- A milestone that needs a product choice says so and points to the decision record; the choice is not made here.
- Ideas go to "Deferred", not into a milestone that is in progress.

## Sequence at a glance
> FILL: 3-10 lines: the milestone codes in order, with their dependencies and anything that may run in parallel.

## Milestones
> FILL: one subsection per milestone, headed by its code and name, each with: Goal (one line) · Items (numbered checkboxes) · Exit criteria (commands and expected results) · Owner verification (what only the owner can check) · Out of scope. Write the first two or three milestones in full and the later ones as one line each.

## Deferred
> FILL: one line per idea that is deliberately not scheduled, with the reason. Add here; do not build speculatively.

## Closed codes
> FILL: one line per finished or dropped milestone: code, name, date, and "done" or "dropped". A closed milestone's subsection above is deleted; the journal keeps the detail. Write "none yet" until the first one closes.
