# docs/acceptance/

> **Purpose:** executable exit criteria: one script per milestone whose exit code says whether the milestone is done.
> **Reader:** owner (runs the scripts) · agent (reads them at planning time, to map its tests to the checks).
> **Authority:** the exit code is the verdict on "done" for its milestone. The scripts implement the exit criteria of `docs/ROADMAP.md`; if the two disagree, the owner fixes one of them.
> **Updated when:** a script is written at plan time for a new milestone, or the owner corrects a wrong check.
> **Status:** CURRENT.

## Conventions
- One script per milestone: `docs/acceptance/<milestone-code>.ps1`, lower-case, copied from `_TEMPLATE.ps1`. Exit code 0 means pass.
- ASCII only. PowerShell 5.1 compatible. `$ErrorActionPreference = "Continue"`, and an explicit `$LASTEXITCODE` check after every native executable.
- Written at plan time, never after the implementation. The agent never edits a script; the owner may fix a wrong check.
- A script checks what can be checked without the owner: that files and contracts exist, that the type-check and the tests pass. It never needs a manual step, a network service or a real external account. What only the owner can verify goes to `docs/FOLLOWUPS.md` part A.
- Red for the right reason: before the work starts, the script must fail on missing files or tests, not on a syntax error. Run it once by hand when it is written.
- Each check is one command deep: a helper it calls exists as a named project command, so the check can be read and compared between versions.
- A milestone whose script is red is not done, whatever the journal says. It is handed off with the failure recorded as a finding.
