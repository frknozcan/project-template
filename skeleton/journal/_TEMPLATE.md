# Journal entry template

> **Purpose:** the skeleton of one journal entry. Copy everything below the rule into today's file.
> **Reader:** agent, during `/handoff`.
> **Authority:** `journal/README.md` owns the rules; this file only gives the shape.
> **Updated when:** the entry shape changes.
> **Status:** CURRENT. The placeholder blocks in this file stay: it is a template, not a record.

---

## Entry N — title

> FILL: replace the heading. N is the next entry number of the day; the title names the work in under ten words.

**Input.**
> FILL: 1-2 lines. Where the task came from (web-chat prompt, `/milestone` code, owner request) and its hard limits.

**Plan (as approved).**
> FILL: the approved plan, numbered, copied here before the first edit. If the task text was the plan, summarize it in 3-8 lines.

**Baseline (before any edit).**
> FILL: the result of each gate before the work started, and the names of tests that were already failing.

**Work.**
> FILL: what was built or changed, by file. Decisions taken and why. Deviations from the plan, each with its reason.

**Checks (after).**
> FILL: the result of each gate after the work. Confirm that the failing names equal the baseline. Say what was not run and why.

**FINDINGS.**
> FILL: F1, F2, ... one line each: anything red, flaky, skipped, surprising, or stated in the prompt and false on disk. Write "none" if there are none.

**OWNER.**
> FILL: the checks only the owner can perform, each with its FOLLOWUPS part A id. Write "nothing owed" if there are none.

**Commit.**
> FILL: one suggested commit message for this entry's work. The agent does not run git.
