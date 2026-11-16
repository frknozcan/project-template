# Plan template

> **Purpose:** the skeleton of one plan or spec. Copy everything below the rule to `docs/plans/<slug>.md` and replace every placeholder block.
> **Reader:** agent, when planning work that needs more than a journal entry.
> **Authority:** `docs/plans/README.md` owns the rules; this file only gives the shape.
> **Updated when:** the plan shape changes.
> **Status:** CURRENT. The placeholder blocks in this file stay: it is a template, not a plan.

---

# Title of the work

> FILL: replace the title with the name of the thing being built.

> **Purpose:** how this piece of work is built, and how we will know it works.
> **Reader:** agent · owner.
> **Authority:** wins on how this work is built. Loses to `docs/decisions/`, `CLAUDE.md` and `docs/ROADMAP.md`.
> **Updated when:** while the work is in progress; frozen when SHIPPED.
> **Status:** DRAFT.

## Problem
> FILL: 2-6 lines. What is wrong or missing, how it shows, and the roadmap item or follow-up id this serves.

## Findings
> FILL: what was read or measured before planning, each line tagged VERIFIED (with path) or ASSUMED. For a fix: the cause, and what was ruled out.

## Approach
> FILL: the chosen design in 5-15 lines. Then the alternatives considered, one line each, with the reason for rejecting them. Anything that needs the owner's choice is marked OWNER-DECISION and comes with a recommended default.

## Out of scope
> FILL: what this work deliberately does not touch, one line each.

## Steps
> FILL: numbered steps in build order: the files touched and what each step delivers.

## Compatibility
> FILL: the effect on stored data, existing users and other modules, and any migration. Write "none" if there is none.

## Verification
> FILL: the gates to run and the tests to add; then the manual steps for the owner: what to do and what to expect.
