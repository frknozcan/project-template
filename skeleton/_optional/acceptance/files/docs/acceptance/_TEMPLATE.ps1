# Acceptance script template. Exit 0 = pass. ASCII only. PowerShell 5.1.
# Copy to docs/acceptance/<milestone-code>.ps1 and replace every placeholder line.
# Written at plan time. The agent never edits it; the owner may fix a wrong check.
$ErrorActionPreference = "Continue"
$script:fail = 0

function Check([bool]$cond, [string]$name) {
  if ($cond) { Write-Host ("PASS  " + $name) }
  else { Write-Host ("FAIL  " + $name); $script:fail = 1 }
}

# --- files and contracts that must exist ---
# FILL: one Check line per file or contract, in this form:
#   Check (Test-Path "path/to/file") "path/to/file exists"

# --- gates (delete the two lines of a gate whose command is none) ---
{{TYPECHECK_COMMAND}}
Check ($LASTEXITCODE -eq 0) "type-check passes"

{{TEST_COMMAND}}
Check ($LASTEXITCODE -eq 0) "tests pass"

{{LINT_COMMAND}}
Check ($LASTEXITCODE -eq 0) "lint passes"

# --- checks that prove this milestone's exit criteria ---
# FILL: one Check line per exit criterion of the milestone in docs/ROADMAP.md.

exit $script:fail
