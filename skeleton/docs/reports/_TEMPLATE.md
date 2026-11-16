# Report template

> **Purpose:** the skeleton of one report. Copy everything below the rule to `docs/reports/YYYY-MM-DD-<slug>/REPORT.md` and replace every placeholder block.
> **Reader:** agent, when a task is a diagnosis, an audit or a verification run.
> **Authority:** `docs/reports/README.md` owns the rules; this file only gives the shape.
> **Updated when:** the report shape changes.
> **Status:** CURRENT. The placeholder blocks in this file stay: it is a template, not a report.

---

# Subject — REPORT (YYYY-MM-DD)

> FILL: replace the title with the subject and the date of the run.

> **Purpose:** record what was found about the subject on this date.
> **Reader:** owner · web chat.
> **Authority:** none. It reports findings; decisions and plans act on them.
> **Updated when:** not after its task ends, except by a dated addendum.
> **Status:** FROZEN record of the date in the title.

## Question
> FILL: 1-3 lines. The symptom or the question, and the environment the run used.

## Cause or answer
> FILL: what was found, each claim tagged VERIFIED (with the evidence file or path) or ASSUMED. For a diagnosis: the cause, and what was ruled out.

## Options
> FILL: the candidate fixes or answers, one short paragraph each; the one chosen, and why the others were rejected. For a pure audit write "not applicable".

## Change
> FILL: a summary of what was changed, by file, or "no code change".

## Evidence
> FILL: the files in this folder, one line each: what it shows.

## Checks
> FILL: gate results before and after; the regression checks performed; what was not run and why.

## Findings and owner questions
> FILL: F1, F2, ... one line each, with FOLLOWUPS ids for what stays open; then the manual steps the owner should perform.
