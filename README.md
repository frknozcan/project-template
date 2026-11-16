# project-template

> **Purpose:** the master template every new project of the owner starts from: a folder skeleton, document templates and the prompts that operate them.
> **Reader:** owner · web chat (through `TEMPLATE_CONTEXT.md`) · agent (through the prompts).
> **Authority:** none over projects. Each project owns its copy from the moment it is created.
> **Updated when:** a lesson from a project is folded back in with `prompts\template-update.md`.
> **Status:** CURRENT. Built 2026-11-16; not yet used to start a project.

## What this is
A domain-neutral, stack-neutral starting point for a solo developer who works in two places: a web chat that cannot see the disk (research, decisions, writing prompts) and Claude Code on the machine (runs the prompts). It was distilled from a long-lived project: what stayed alive there is kept, what died is left out, and the reasons are recorded.

The template exists to prevent one failure: documents that nobody maintains and that mislead later sessions. It therefore ships few documents, each with one owner, a status line, and a rule for when it is deleted.

## What is in it
| Path | What |
|---|---|
| `USAGE.md` | how to start and run a project from this template; start here |
| `TEMPLATE_CONTEXT.md` | map of this template, to paste into a web chat |
| `prompts\new-project-bootstrap.md` | Claude Code prompt that creates a project from a filled brief |
| `prompts\template-update.md` | Claude Code prompt that folds a lesson from a project back in |
| `skeleton\` | everything a new project receives, at the paths it will live at |
| `skeleton\_optional\` | opt-in parts: acceptance scripts, permissions file |
| `_provenance\` | where the template came from; never copied into a project |

## Rules for changing the template
- Nothing project-specific outside `_provenance\`: no product names, paths, stack names or content.
- Two placeholder devices only: double-brace tokens for single values and FILL blocks for prose. The token list lives in `TEMPLATE_CONTEXT.md`.
- A file is added only when a project proved the need, and something is removed whenever something is added.
- Files are English. Commands are PowerShell 5.1. Any `.ps1` is ASCII-only.
