# ARCHITECTURE — {{PROJECT_NAME}}

> **Purpose:** the map of what exists in the code: modules, boundaries, data contracts, how data flows.
> **Reader:** agent (the parts a task touches) · owner.
> **Authority:** none. It describes. Rules live in `CLAUDE.md` §3 and never move here; what should exist is decided in `docs/decisions/`.
> **Updated when:** at `/handoff`, in every session that changes modules, boundaries or contracts.
> **Status:** CURRENT. It describes the present only: no dated change notes, no history, no plans.

## Module map
> FILL: a tree or table of the main directories and key modules, one line each: what it owns and what it must not do. Add a line when a module appears; delete it when the module goes.

## Boundaries
> FILL: 2-6 lines. Which layer may depend on which, where external services are wrapped, and the reason behind the rules of `CLAUDE.md` §3.

## Data contracts
> FILL: one short subsection per persisted or exchanged format: where its single source is (file and symbol), its version, and how it is migrated. Point to the source; do not copy field lists that the code already defines.

## Data flow (happy path)
> FILL: 5-10 numbered steps for the main path through the system, naming the module that acts in each step.

## Testing strategy
> FILL: 3-6 lines. What the gates cover, what is tested without the real environment, and what only the owner can verify by hand.

## Decided but not yet in the code
> FILL: one line per accepted decision that the code does not reflect yet, with the id of the decision record. Write "none" when the code has caught up with the decisions.
