# docs/reports/

> **Purpose:** one-off records of a diagnosis, an audit or a verification run, with their evidence.
> **Reader:** owner · web chat, when a report is pasted to it · agent, when a prompt names a report.
> **Authority:** none. A report states what was found. What to do about it is a decision or a plan.
> **Updated when:** written once, during its task. Afterwards only a dated addendum may be added.
> **Status:** CURRENT.

## Naming
- One folder per report: `docs/reports/YYYY-MM-DD-<slug>/REPORT.md`, copied from `_TEMPLATE.md`.
- Evidence (logs, screenshots, command output, small scripts) sits in the same folder and is listed in the report.
- The date in the name marks the report as a frozen record. A living doc never has a date in its name.

## Rules
- Diagnose before fixing: a report that finds a cause is written before the fix. "No code change" is a normal outcome.
- Every claim is tagged VERIFIED, with the evidence file or path, or ASSUMED.
- Say what was not checked, and why.
- Open points leave the report: findings and owner checks get ids in `docs/FOLLOWUPS.md`.
- A report that nothing cites any more (state, follow-ups, a decision, a plan, code) is deleted at the end of the milestone.
