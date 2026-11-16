# Provenance — extraction from wpg, 2026-11-16

> **Purpose:** where the template came from: what was found in the source repo, how each file was classified, what became which template file, what was set aside or dropped, and why.
> **Reader:** owner · agent running `prompts\template-update.md`.
> **Authority:** none over the template. It is the evidence behind it. This is the only place where names from the source repo may appear.
> **Updated when:** never rewritten. A later lesson from any project gets its own dated note in this folder.
> **Status:** FROZEN record of 2026-11-16.

Tags: **[V]** verified on disk in the source repo (path given) · **[A]** assumed.

## 1. Source and proof

| Item | Value |
|---|---|
| SOURCE_REPO | `C:\dev\wpg` (read-only for the whole task) |
| TEMPLATE_DIR | `C:\dev\project-template` (did not exist before the build) |
| Source HEAD | `9136799`, 2026-11-04, branch `m-content/ai-creation`; 64 commits since 2026-07-10 (57 of them in July) |
| Working tree | 106 `git status --porcelain` lines (74 modified, 1 deleted, 31 untracked entries); the six newest journal entries are untracked |
| Status fingerprint, first run | 106 lines, sha256 `f55b6533e2c0e493d9cc67ad5122d4fcc5ec0f5fdea79e29712946a696523ebb` |
| Status fingerprint, end of analysis | identical |
| Status fingerprint, start of build | identical |
| Status fingerprint, end of build | recorded in the build report (taken after this file was written) |
| Commands run in the source repo | listing, reading, searching, and `git status / log / ls-files` with `--no-optional-locks`. No script, package command, test, build or pipeline |
| Source `CLAUDE.md` | treated as data. Its rules (for example "the agent never runs git") did not govern the extraction |

## 2. Method

- **Scope:** every `.md` file plus the non-`.md` workflow scaffolding (`.claude/`, `loop/`, `docs/acceptance/`, `.gitignore`, gate scripts in `package.json`).
- **Excluded as generated or vendored:** `.git`, `node_modules`, `android`, `.expo`, `.wrangler`, `dist` (root, `legal/`, `tools/content/`, `tools/legal/`), `marketing/store/tools/.deps/node_modules`, and `docs/release/expo-upgrade/{before,after}/ios` (evidence folders caught by the `ios` name rule; checked: no `.md` inside).
- **Rows:** 355 `.md` files = 84 individual rows + 13 family rows (271 files); plus 9 rows of non-`.md` scaffolding; 106 rows in all.
- **LIFE:** LIVE = modified since 2026-10-01, or cited by `CLAUDE.md` / `STATE.md` / `docs/AI_CONTEXT.md`, or by a journal entry since 2026-10-01, with no evidence of supersession. STALE = still cited or declared an authority, but drifted. DEAD = abandoned or superseded. ONE-OFF = a dated report, audit, proposal or filled prompt that served one task, whatever cites it.
- **CONTENT:** STRUCTURE = reusable in any project. DOMAIN = this product, stack or content. MIXED = both; the reusable part is named in section 5.
- **ORIGIN:** original = the first manual scaffold; loop = the autonomous-runner variant; grew = created during the project.
- **Citation counts:** for each file, the number of other files containing its name (or `folder/name` when the name is not unique), split into the constitution trio, journal entries since 2026-10-01, and code or config files (351 scanned).
- **Read in full:** `docs/AI_CONTEXT.md`, `docs/AI_CONTEXT.refresh.md`, `CLAUDE.md`, `STATE.md`, `docs/WORKFLOW-COMPARISON.md`, both commands, both settings files, `.gitignore`, `docs/POLICY.md`, `docs/acceptance/README.md`, `docs/acceptance/m0.ps1`, `loop/milestones.json`, `loop/status.json`, `docs/plans/master-roadmap.md`, `docs/decisions/2026-10-25-rename-inkfathom.md`, `journal/2026-11-16.md`, `docs/plans/asset-creation/in-game-packs/real-assets-to-apk.md`, `docs/plans/session-snapshot-bounded.md`, `docs/release/atlas-card-bar/REPORT.md`, `docs/PROPOSED-acceptance-changes.md`.
- **Read in part:** `docs/ROADMAP.md` (1-70), `docs/plans/core-followups.md` (1-70 and headings), `journal/2026-07-10.md` (1-75 and headings), `journal/2026-10-14.md` (headings and 733-802), `loop/loop.ps1` (1-75), `docs/pr_body.md` (1-30), `docs/ARCHITECTURE.md` (1-45 and headings), `docs/plans/ios-test.md` (1-45), `docs/decisions/2026-07-11-product-decisions.md` (1-12, 84-153), `package.json` (scripts only).
- **Headings only:** 25 further samples and all six decision records. Every other file: first heading only. No source code was read.

## 3. Inventory summary

| LIFE \ CONTENT | STRUCTURE | MIXED | DOMAIN | Rows |
|---|---|---|---|---|
| LIVE | 0 | 17 | 43 | 60 |
| STALE | 0 | 2 | 6 | 8 |
| DEAD | 3 | 5 | 5 | 13 |
| ONE-OFF | 1 | 0 | 24 | 25 |
| Total | 4 | 24 | 78 | 106 |

| Origin | Rows | LIVE | Not live |
|---|---|---|---|
| Original scaffold | 8 | 5: `CLAUDE.md`, `STATE.md`, `docs/ARCHITECTURE.md`, `journal/`, `.gitignore` | 3 DEAD: both commands, `docs/ROADMAP.md` |
| Loop variant | 8 | 1: `.claude/settings.json` | 7 DEAD |
| Grew during the project | 90 | 54 | 36 |

No row is both LIVE and pure STRUCTURE. The reusable layer was found inside the 17 LIVE MIXED rows and in dead structure files.

## 4. Full inventory

### 4.1 Individual files (84)

Dates are from the disk on 2026-11-16. "Last commit" is the date of the newest commit that touched the file; a plus sign means uncommitted changes on top, "untracked" means never committed. The last column counts other files that name this one: constitution trio / journal entries since 2026-10-01 / code and config files.

| Path | Lines | Modified on disk | Last commit | First heading | What it is | LIFE | CONTENT | Origin | Cited by |
|---|---|---|---|---|---|---|---|---|---|
| `CLAUDE.md` | 472 | 2026-11-06 | 2026-11-04 + | CLAUDE.md — Word Puzzle Game (brand: "Inkfathom") | Agent constitution in 11 numbered sections; sections 1, 2, 9, 10, 11 partly stale | LIVE | MIXED | original | 2 / 21 / 61 |
| `STATE.md` | 25 | 2026-11-16 | 2026-11-04 + | STATE — session recovery (max 25 lines, overwrite on handoff... | Session-recovery snapshot, overwritten each session; has become a carried backlog | LIVE | MIXED | original | 2 / 15 / 4 |
| `.claude/commands/handoff.md` | 12 | 2026-07-12 | 2026-07-11 | (no heading) | /handoff command: journal section, STATE overwrite, PR body; last journal mention 2026-07-13 | DEAD | STRUCTURE | original | 0 / 0 / 0 |
| `.claude/commands/milestone.md` | 21 | 2026-07-12 | 2026-07-11 | (no heading) | /milestone command: read context, plan, STOP; wired to the acceptance script and the loop kickoff field; last journal mention 2026-07-18 | DEAD | MIXED | original | 0 / 0 / 0 |
| `docs/AI_CONTEXT.md` | 317 | 2026-11-16 | 2026-11-04 + | AI_CONTEXT.md — repo map for web-chat sessions | Web-chat-facing repo map with [V]/[A] and CURRENT/STALE/PARKED tags | LIVE | MIXED | grew | 1 / 10 / 0 |
| `docs/AI_CONTEXT.refresh.md` | 20 | 2026-08-06 | 2026-08-10 | (no heading) | Self-contained prompt that refreshes the map from disk | LIVE | MIXED | grew | 1 / 0 / 0 |
| `docs/ARCHITECTURE.md` | 635 | 2026-11-16 | 2026-11-04 + | ARCHITECTURE.md — Word Puzzle Game | Living module map, ports and data contracts; updated at handoff | LIVE | MIXED | original | 2 / 8 / 2 |
| `docs/DESIGN-SYSTEM.md` | 466 | 2026-11-15 | 2026-10-26 + | DESIGN-SYSTEM.md — Kelime Atlası | Design reference; two sections flagged stale by the map | LIVE | DOMAIN | grew | 1 / 4 / 5 |
| `docs/MASCOT.md` | 45 | 2026-07-12 | 2026-07-11 | MASCOT.md — Mascot, cosmetics & sharing (deferred feature sp... | Deferred feature spec, parked since 2026-07-12, still named a companion doc by CLAUDE.md | STALE | DOMAIN | grew | 2 / 0 / 5 |
| `docs/POLICY.md` | 45 | 2026-07-12 | 2026-07-11 | POLICY.md — loop rules for this project | Loop rules: hard rules, loop mechanics, budget discipline | DEAD | MIXED | loop | 2 / 0 / 2 |
| `docs/ROADMAP.md` | 139 | 2026-07-19 | 2026-07-20 | ROADMAP — Word Puzzle Game | M0-M8 milestone list with checkboxes and acceptance pointers; superseded 2026-07-17 | DEAD | MIXED | original | 2 / 0 / 1 |
| `docs/pr_body.md` | 67 | 2026-07-12 | 2026-07-12 | M4 — Coin economy + AdMob: rewarded button wiring + AdMob La... | Generated PR body of one milestone | DEAD | DOMAIN | loop | 1 / 0 / 1 |
| `docs/WORKFLOW-COMPARISON.md` | 147 | 2026-07-12 | 2026-07-11 | Workflow comparison — Setup A ("RAG", is-kanunu-ornek) vs Se... | Comparison of the manual scaffold and the loop scaffold, with four integration proposals | ONE-OFF | STRUCTURE | grew | 1 / 0 / 0 |
| `docs/acceptance/README.md` | 15 | 2026-07-12 | 2026-07-11 | Acceptance conventions | Acceptance-script conventions: the exit code is the verdict | DEAD | STRUCTURE | loop | 0 / 0 / 0 |
| `docs/content/pack-ordering.md` | 99 | 2026-11-03 | 2026-11-04 | Pack ordering | Single-rule reference: the rule, how to change it, a checklist | LIVE | DOMAIN | grew | 3 / 1 / 3 |
| `docs/decisions/2026-07-11-product-decisions.md` | 213 | 2026-07-12 | 2026-07-12 | Product Decisions — 2026-07-11 | First decision record: decisions, conflicts, open questions, resolutions; declares itself the primary product authority | LIVE | MIXED | grew | 0 / 1 / 2 |
| `docs/decisions/2026-07-17-free-hint-rewarded.md` | 126 | 2026-07-17 | 2026-07-17 | Product Decisions — 2026-07-17 · Free hint via rewarded ad | Decision record D1-D6; D4 later superseded | LIVE | MIXED | grew | 1 / 0 / 4 |
| `docs/decisions/2026-09-26-free-hint-cooldown.md` | 200 | 2026-09-26 | 2026-10-07 | Product Decisions — 2026-09-26 · Free-hint cooldown | Decision record D1-D6 with implementation cross-reference and verification status | LIVE | MIXED | grew | 1 / 1 / 0 |
| `docs/decisions/2026-10-12-atlas-search-v1.md` | 135 | 2026-10-13 | 2026-10-26 | Product Decisions — 2026-10-12 · Atlas search v1 | Decision record D1-D4 with a deferred list and verification status | LIVE | MIXED | grew | 1 / 2 / 4 |
| `docs/decisions/2026-10-12-client-capability-gate.md` | 104 | 2026-10-12 | 2026-10-26 | Product Decisions — 2026-10-12 · Client capability gate (`mi... | Decision record G1-G5 and C1 | LIVE | MIXED | grew | 0 / 1 / 14 |
| `docs/decisions/2026-10-25-rename-inkfathom.md` | 91 | 2026-10-25 | 2026-10-26 | Product Decisions — 2026-10-25 · Rename to Inkfathom | Decision record D1-D6; states the supersession convention | LIVE | MIXED | grew | 1 / 1 / 2 |
| `docs/release/ads-test-codes.md` | 209 | 2026-11-06 | untracked | Ads on Android and iOS: test units, production units, test d... | How-to and reference for ad units and test devices | LIVE | DOMAIN | grew | 3 / 3 / 6 |
| `docs/release/age-rating-audit.md` | 204 | 2026-11-06 | 2026-11-04 + | Age rating, audience and ad rating — audit (2026-10-29) | Dated audit of ratings and audience | ONE-OFF | DOMAIN | grew | 1 / 2 / 0 |
| `docs/release/app-store-privacy-answers.md` | 99 | 2026-11-06 | untracked | App Store Connect: App Privacy answers (iOS, Inkfathom 1.0.0... | Answer sheet for a store console form | LIVE | DOMAIN | grew | 2 / 1 / 0 |
| `docs/release/data-flows.md` | 805 | 2026-11-06 | 2026-11-04 + | Data flows — what leaves a WordAtlas device (verification au... | Audit of what leaves a device | LIVE | DOMAIN | grew | 1 / 7 / 2 |
| `docs/release/data-inventory.md` | 334 | 2026-11-06 | 2026-11-04 + | Release data inventory — what the Inkfathom build collects a... | Inventory of SDKs, consent, permissions and hosts | LIVE | DOMAIN | grew | 1 / 10 / 0 |
| `docs/release/legal-site/PLAN.md` | 565 | 2026-10-25 | 2026-10-26 | Legal site go-live plan (Inkfathom), 2026-10-25 | Go-live plan and record for the legal site | ONE-OFF | DOMAIN | grew | 1 / 1 / 2 |
| `docs/release/qa-consent-v1.md` | 99 | 2026-11-06 | 2026-10-26 + | Consent QA (v1, Android): EEA and US-state runs | Owner-run manual QA procedure | LIVE | DOMAIN | grew | 2 / 4 / 0 |
| `docs/release/qa-consent-v1/run-2026-10-25/RESULT.md` | 211 | 2026-10-25 | 2026-10-26 | Consent device QA, run 2026-10-25: `qa-consent-v1.md` §1 ste... | Result of one QA run, with evidence | ONE-OFF | DOMAIN | grew | 1 / 1 / 0 |
| `docs/release/remote-config.md` | 345 | 2026-11-04 | 2026-11-04 | Remote Config for release | Release reference: console checklist, key audit, bounds, semantics | LIVE | DOMAIN | grew | 2 / 1 / 4 |
| `docs/release/rename-inkfathom/AUDIT.md` | 614 | 2026-10-25 | 2026-10-26 | Rename audit: "WordAtlas" / "Kelime Atlası" → **Inkfathom** | Rename audit and applied changes | ONE-OFF | DOMAIN | grew | 1 / 2 / 0 |
| `docs/release/rename-inkfathom/evidence/sources.md` | 29 | 2026-10-24 | 2026-10-26 | Sources for AUDIT.md §4 (fetched 2026-10-24) | Sources fetched for the rename audit | ONE-OFF | DOMAIN | grew | 0 / 1 / 0 |
| `docs/runbooks/content-artwork-local-qa.md` | 149 | 2026-11-04 | 2026-11-04 | Runbook — local content + pack-artwork QA server | Runbook: local QA server | LIVE | DOMAIN | grew | 1 / 2 / 0 |
| `docs/runbooks/content-delivery-cloudflare.md` | 776 | 2026-11-04 | 2026-11-04 | Runbook — content delivery on Cloudflare Pages | Runbook: content delivery end to end | LIVE | DOMAIN | grew | 1 / 4 / 5 |
| `docs/runbooks/legal-site-cloudflare.md` | 373 | 2026-11-06 | 2026-10-26 + | Runbook — legal site on Cloudflare Pages | Runbook: legal site hosting and updates | LIVE | DOMAIN | grew | 2 / 2 / 1 |
| `docs/plans/asset-creation/in-game-packs/INDEX.md` | 102 | 2026-11-03 | 2026-11-04 | In-game pack art — INDEX (collision registry) | Registry of art editions and collisions | LIVE | DOMAIN | grew | 2 / 4 / 0 |
| `docs/plans/asset-creation/in-game-packs/MASTER-PROMPT.md` | 345 | 2026-10-14 | 2026-10-26 | In-game pack art — MASTER PROMPT (Claude Code) | Reusable stored prompt with a parameter header and a paste-ready report | LIVE | MIXED | grew | 2 / 2 / 0 |
| `docs/plans/asset-creation/in-game-packs/real-assets-to-apk.md` | 91 | 2026-10-16 | 2026-10-26 | Real assets → APK (reusable) | Reusable stored prompt: parameters, dry-run mode, rules, steps, gates, report | LIVE | MIXED | grew | 2 / 2 / 1 |
| `docs/plans/cdn-prod-staging-split.md` | 436 | 2026-11-04 | 2026-11-04 | CDN prod/staging split — audit, decision, deploy guard, stag... | Audit, decision, guard and cutover plan; owner steps pending | LIVE | DOMAIN | grew | 2 / 1 / 10 |
| `docs/plans/content-delivery-e2e-test.md` | 352 | 2026-10-25 | 2026-10-26 | Content-delivery e2e manual test scenario (device, owner-run... | Owner-run manual test scenario; ground truth dated 2026-08-07 [A: not read in full] | STALE | DOMAIN | grew | 0 / 2 / 0 |
| `docs/plans/content-delivery-v1.md` | 817 | 2026-08-09 | 2026-08-10 | Content Delivery v1 — pull-based pack patching | Design spec of a shipped feature | LIVE | DOMAIN | grew | 0 / 2 / 32 |
| `docs/plans/content-generation-engine.md` | 967 | 2026-07-19 | 2026-07-20 | Content Generation Engine — Star Words · Bonus Words · Info ... | Content spec named authoritative by the master roadmap | LIVE | DOMAIN | grew | 0 / 9 / 4 |
| `docs/plans/content-grow-loop.md` | 681 | 2026-07-31 | 2026-08-01 | content:grow — disk-read audit + cost instrumentation | Audit of a pipeline runner that is no longer used | DEAD | DOMAIN | grew | 0 / 0 / 1 |
| `docs/plans/content-language-filtering.md` | 245 | 2026-09-21 | 2026-10-07 | Content language filtering (P13) | Design record of a shipped feature | LIVE | DOMAIN | grew | 1 / 0 / 11 |
| `docs/plans/content-pipeline-v2.md` | 1267 | 2026-07-28 | 2026-07-30 | Content pipeline v2 — design document | Design of a pipeline replaced by one-pass authoring from 2026-09-17 | STALE | DOMAIN | grew | 0 / 0 / 28 |
| `docs/plans/content-review-prompt.md` | 361 | 2026-08-03 | 2026-08-10 | Single-pass content review ("control") prompt | Stored review prompt | ONE-OFF | DOMAIN | grew | 0 / 0 / 0 |
| `docs/plans/core-followups.md` | 1304 | 2026-10-13 | 2026-10-26 | Core Follow-ups (tracked across D1–D5, not yet scheduled) | Numbered follow-ups list with a status legend | STALE | MIXED | grew | 2 / 1 / 4 |
| `docs/plans/dark-mode-artwork-investigation.md` | 247 | 2026-09-20 | 2026-10-07 | Dark-mode pack-artwork investigation (P11, 2026-09-20) | Investigation record | ONE-OFF | DOMAIN | grew | 1 / 0 / 4 |
| `docs/plans/design-system-rollout.md` | 1021 | 2026-10-12 | 2026-10-26 | Design-System Rollout — Full Implementation Spec | Implementation spec of the design rollout | LIVE | DOMAIN | grew | 0 / 2 / 2 |
| `docs/plans/free-hint-ad-button.md` | 308 | 2026-07-17 | 2026-07-17 | "Watch ad for free" micro-button on the gameplay hint button... | Spec of one shipped feature | ONE-OFF | DOMAIN | grew | 0 / 0 / 5 |
| `docs/plans/gameplay-layout-audit.md` | 211 | 2026-09-17 | 2026-10-07 | Gameplay Screen Layout / Geometry Audit | Layout audit | ONE-OFF | DOMAIN | grew | 0 / 0 / 0 |
| `docs/plans/gameplay-responsive-layout.md` | 454 | 2026-09-20 | 2026-10-07 | Gameplay Responsive Layout — implementation plan | Design record of a shipped feature | LIVE | DOMAIN | grew | 1 / 0 / 10 |
| `docs/plans/general-pack-easy-start-profile.md` | 641 | 2026-10-29 | 2026-11-04 | General-pack easy-start profile | Content profile used by generation prompts | LIVE | DOMAIN | grew | 0 / 0 / 0 |
| `docs/plans/home-continue-and-session-resume.md` | 434 | 2026-07-17 | 2026-07-17 | Home "next pack" fix + in-level session resume + v2 readines... | Spec partly superseded by session-snapshot-bounded.md | STALE | DOMAIN | grew | 0 / 0 / 2 |
| `docs/plans/ios-parity-inventory.md` | 237 | 2026-10-26 | 2026-10-26 | iOS native-code parity inventory (M-iOS §1) | Platform parity inventory | LIVE | DOMAIN | grew | 1 / 1 / 0 |
| `docs/plans/ios-readiness/IOS-READINESS.md` | 603 | 2026-11-06 | 2026-10-26 + | iOS readiness without an Apple account or a device (2026-10-... | Readiness report with owner decisions and applied changes | LIVE | DOMAIN | grew | 1 / 1 / 2 |
| `docs/plans/ios-readiness/evidence/README.md` | 38 | 2026-11-06 | 2026-10-26 + | Evidence — iOS readiness (2026-10-26) | Index of evidence files | ONE-OFF | DOMAIN | grew | 0 / 0 / 0 |
| `docs/plans/ios-test.md` | 141 | 2026-10-26 | 2026-10-26 | iOS deferred device-verification checklist | Running, append-only checklist of deferred owner verification, one section per milestone code | LIVE | MIXED | grew | 0 / 1 / 0 |
| `docs/plans/marketing-visual-generation-system.md` | 444 | 2026-09-16 | 2026-10-07 | Marketing Visual Generation System — Kelime Atlası | Prompt library for marketing visuals | LIVE | DOMAIN | grew | 1 / 1 / 1 |
| `docs/plans/master-roadmap.md` | 426 | 2026-09-14 | 2026-10-07 | Kelime Atlası — MASTER ROADMAP (v1 launch → v1.1/v2 forward ... | Roadmap that replaced docs/ROADMAP.md: stable codes, numbered sections, settled decisions | STALE | MIXED | grew | 2 / 0 / 0 |
| `docs/plans/monetization-v1-strategy.md` | 648 | 2026-07-14 | 2026-07-14 | Monetization v1 Strategy — Offline Ad Gating + IAP | Strategy analysis behind one decision | ONE-OFF | DOMAIN | grew | 0 / 0 / 0 |
| `docs/plans/navbar-semantic-background.md` | 284 | 2026-09-21 | 2026-10-07 | P12 — Navbar semantic background | Design record of one prompt-sized change | LIVE | DOMAIN | grew | 1 / 0 / 1 |
| `docs/plans/pack-chapter-level.md` | 588 | 2026-07-13 | 2026-07-13 | Pack → Chapter → Level — Full Implementation Spec | Implementation spec of the content structure | LIVE | DOMAIN | grew | 0 / 9 / 2 |
| `docs/plans/pack-grouping/pack-grouping-reference.md` | 262 | 2026-10-25 | 2026-10-26 | Same-domain pack grouping: reference | Reference: contract, owner decisions, gaps, checklist | LIVE | DOMAIN | grew | 1 / 1 / 0 |
| `docs/plans/pipeline-vs-single-prompt.md` | 492 | 2026-08-03 | 2026-08-10 | Pipeline vs. single-prompt — what is kept, approximated, and... | Comparison analysis | ONE-OFF | DOMAIN | grew | 0 / 0 / 0 |
| `docs/plans/progression-config.md` | 128 | 2026-08-06 | 2026-08-10 | Progression economy — one config, worked examples | Worked examples for one configuration block | LIVE | DOMAIN | grew | 1 / 0 / 1 |
| `docs/plans/remote-config-values.md` | 141 | 2026-11-04 | 2026-11-04 | Remote Config values — reference | Value reference; no inbound reference found | LIVE | DOMAIN | grew | 0 / 0 / 0 |
| `docs/plans/save-model-v2.md` | 647 | 2026-08-06 | 2026-08-10 | Save/progression data model v2 (design) | Data-model design record | LIVE | DOMAIN | grew | 1 / 0 / 7 |
| `docs/plans/session-snapshot-bounded.md` | 139 | 2026-09-23 | 2026-10-07 | Bounded in-level session persistence (P15) | Bug-fix spec; the best plan/spec sample: bug, root cause, owner decision, non-goals, scenarios, migration, tests, owner QA | LIVE | DOMAIN | grew | 1 / 0 / 1 |
| `docs/plans/sound-design.md` | 569 | 2026-07-17 | 2026-07-17 | Sound design — full SFX/audio plan (v1) | Audio plan partly superseded by the master roadmap (S-2) | STALE | DOMAIN | grew | 0 / 0 / 2 |
| `docs/plans/sound-integration-audit.md` | 809 | 2026-09-12 | 2026-09-14 | Sound integration — discovery audit (Step 1 of N) | Discovery audit | ONE-OFF | DOMAIN | grew | 1 / 0 / 4 |
| `docs/plans/text-script-support.md` | 460 | 2026-10-12 | 2026-10-26 | Text & script support — audit and plan (TR/EN today, DE next... | Audit and plan for text and script support | LIVE | DOMAIN | grew | 1 / 1 / 8 |
| `docs/plans/tutorial-spec.md` | 206 | 2026-07-17 | 2026-07-17 | Scripted first-launch tutorial + starting coin grant | Feature spec | LIVE | DOMAIN | grew | 1 / 0 / 1 |
| `docs/plans/tutorial-ux-polish.md` | 420 | 2026-07-17 | 2026-07-17 | Tutorial UX polish — PHASE 1 spec (planning only, no code) | Phase-1 planning spec | ONE-OFF | DOMAIN | grew | 0 / 0 / 1 |
| `docs/plans/visual-asset-generation-system.md` | 1885 | 2026-11-03 | 2026-11-04 | Visual Asset Generation System — Kelime Atlası | Prompt library and rules for art assets | LIVE | DOMAIN | grew | 1 / 3 / 7 |
| `legal/CHANGELOG.md` | 72 | 2026-11-06 | 2026-11-04 + | Legal page changelog | Changelog of the published legal page | LIVE | DOMAIN | grew | 0 / 4 / 0 |
| `legal/README.md` | 67 | 2026-10-25 | 2026-10-26 | legal/ — single source for the Inkfathom legal page | Layout, rules and publishing steps of the legal source | LIVE | DOMAIN | grew | 0 / 3 / 3 |
| `legal/RISKS.md` | 56 | 2026-10-25 | 2026-10-26 | Legal decisions and known risks (solo developer, v1) | Numbered legal decisions and known risks | LIVE | DOMAIN | grew | 2 / 2 / 10 |
| `legal/STORE-DECLARATIONS.md` | 115 | 2026-11-06 | 2026-11-04 + | Store and console declarations — v1 (Android) | Store and console declarations | LIVE | DOMAIN | grew | 0 / 4 / 1 |
| `legal/content/en/privacy.md` | 252 | 2026-11-06 | 2026-11-04 + | {{APP_NAME}} — Privacy Policy and Terms of Use | The published policy text | LIVE | DOMAIN | grew | 2 / 8 / 3 |
| `legal/reference/privacy-and-terms.tr.md` | 165 | 2026-11-06 | 2026-11-04 + | YAYIMLANMAZ — yalnızca okuma kolaylığı için Türkçe çeviri | Unpublished reference translation | LIVE | DOMAIN | grew | 0 / 2 / 1 |
| `marketing/store/LISTING.md` | 267 | 2026-11-16 | untracked | Inkfathom — store listing copy | Draft store listing copy | LIVE | DOMAIN | grew | 2 / 1 / 1 |
| `marketing/store/README.md` | 188 | 2026-11-16 | untracked | Store assets — Inkfathom | Index, validation and regeneration of store assets | LIVE | DOMAIN | grew | 1 / 1 / 4 |
| `assets/audio/SOURCES.md` | 120 | 2026-09-12 | 2026-09-14 | Audio asset provenance | Provenance and licences of audio assets; one stale brand line noted in STATE.md | STALE | DOMAIN | grew | 0 / 0 / 1 |

### 4.2 Families (13 rows, 271 files)

| Family and naming pattern | Count | Modified on disk | Samples read | LIFE | CONTENT | Origin |
|---|---|---|---|---|---|---|
| Journal: `journal/YYYY-MM-DD.md` | 55 | 2026-07-10 .. 2026-11-16 | oldest (lines 1-75, headings), newest (full), largest `2026-10-14.md`, 1,522 lines (headings, lines 733-802); headings of four more | LIVE | MIXED | original |
| Filled generation prompts: `docs/plans/create/<lang>-<theme>.create.md`, `create/remote-create/remote.<theme>.create.md` | 33 | 2026-09-21 .. 2026-10-29 | `medicine.create.md` (head), `de-music.create.md`, largest at 2,872 lines (head), `en-kitchen.create.md` (headings) | ONE-OFF | DOMAIN | grew |
| Earlier filled prompts: `docs/plans/<theme>-create.md` | 4 | 2026-09-17 .. 2026-09-21 | first headings | ONE-OFF | DOMAIN | grew |
| Master prompt templates: `docs/plans/single-prompt-generation-v2[-<lang>].md` | 5 | 2026-08-03 .. 2026-10-17 | `single-prompt-generation-v2.md` (headings) | LIVE | DOMAIN | grew |
| Scratch prompt variants: `docs/plans/{new-prompt,new-prompt3,newnew,en-prompt-copy,notr-changed-en-master-prompt,medicine-first-prompt,mythology-first-prompt}.md` | 7 | 2026-08-03 .. 2026-09-14 | first headings | DEAD | DOMAIN | grew |
| `docs/plans/bonuswords-<kind>[-<lang>].md` | 5 | 2026-08-10 | first headings | ONE-OFF | DOMAIN | grew |
| Per-item prompt files: `docs/plans/asset-creation/in-game-packs/<lang>/<theme>/<theme>-asset.md` | 4 | 2026-10-14 .. 2026-10-15 | first headings | ONE-OFF | DOMAIN | grew |
| Staging notes: `docs/content-staging/YYYY-MM-DD-<slug>.md` | 13 | 2026-07-18 .. 2026-07-28 | oldest and newest (headings), largest `2026-07-24-stage2-pilot.md` (head) | ONE-OFF | DOMAIN | grew |
| Task reports: `docs/release/<topic>/REPORT.md` | 7 | 2026-10-16 .. 2026-11-16 | `atlas-card-bar/REPORT.md` (full), `font-scaling/REPORT.md` (headings) | ONE-OFF | DOMAIN | grew |
| Briefs: `tools/content/data/<lang>/briefs/<theme>.{brief,owner-summary,extension-candidates}.md` | 69 | 2026-08-05 .. 2026-10-29 | one head | LIVE | DOMAIN | grew |
| QA sidecars: `tools/content/data/<lang>/owner-gloss/<theme>.en.md` | 23 | 2026-09-24 .. 2026-10-26 | one head | ONE-OFF | DOMAIN | grew |
| Pipeline prompts and task files: `tools/content/data/tr/{prompts,stage1a,stage1b,stage2,stage3}/*.md` | 42 | 2026-07-24 .. 2026-08-01 | two heads | DEAD | DOMAIN | grew |
| Proposals: `docs/PROPOSED-*.md` | 4 | 2026-07-12 .. 2026-07-13 | `PROPOSED-acceptance-changes.md` (full) | ONE-OFF | DOMAIN | grew |

### 4.3 Non-.md workflow scaffolding (9 rows)

| Path | Size, date | What | LIFE | CONTENT | Origin |
|---|---|---|---|---|---|
| `.claude/settings.json` | 547 B, 2026-07-12 | permissions: git and gh denied; edits to `docs/acceptance/`, `loop/`, `.claude/` denied; WebFetch and WebSearch denied | LIVE | MIXED | loop |
| `.claude/settings.local.json` | 358 B, 2026-09-12 | six accumulated one-off approvals; not tracked | ONE-OFF | DOMAIN | grew |
| `loop/loop.ps1` | 10,683 B, 2026-07-12 | autonomous milestone runner | DEAD | STRUCTURE | loop |
| `loop/milestones.json` | 5,347 B, 2026-07-12 | seven milestone definitions for the runner | DEAD | MIXED | loop |
| `loop/status.json` | 139 B, 2026-07-12 | pass state: M0, M1, M2, M3, M3.5, M4 "passed" | DEAD | DOMAIN | loop |
| `docs/acceptance/m*.ps1` (7) | 1.2-1.9 KB each, 2026-07-12 | acceptance scripts m0-m5 and m8 | DEAD | MIXED | loop |
| `.gitignore` | modified 2026-11-16 | workflow-docs block (commented out), secrets and build output, generated directories | LIVE | MIXED | original |
| `package.json` gate scripts | - | `test`, `typecheck`, `lint:i18n`, `release:check`, `content:validate`, `text:check`, `art:check`, `legal:check` | LIVE | DOMAIN | grew |
| `docs/PROPOSED-*.json` (3) | 2026-07-12 .. 2026-07-13 | proposed milestone definitions | ONE-OFF | DOMAIN | grew |

## 5. Doc types and what became of them

| Type | Template file | Reusable part taken | wpg sources |
|---|---|---|---|
| Agent constitution | `skeleton\CLAUDE.md` | numbered sections cited by number; "decided, do not reopen"; out-of-scope list; verified environment traps; working rules | `CLAUDE.md` (sections 3, 10, 11 and the shape of 1, 2, 9); rules 1, 2, 3, 6 of `docs/POLICY.md` |
| State snapshot | `skeleton\STATE.md` | overwrite-not-append; verified facts; current state, checks baseline, owner checks, next step, suggested commit | `STATE.md` |
| Journal | `skeleton\journal\README.md`, `_TEMPLATE.md` | one file per day, numbered entries; Input, Plan, Baseline, Checks, FINDINGS, OWNER, commit message | `journal/2026-11-16.md`, `journal/2026-10-14.md`, `journal/2026-07-10.md` |
| Web-chat map | `skeleton\docs\AI_CONTEXT.md` | legend, section set, status tags, "How we work", current focus | `docs/AI_CONTEXT.md` |
| Refresh prompt | `skeleton\docs\AI_CONTEXT.refresh.md` | the three steps and the terse report, kept almost word for word | `docs/AI_CONTEXT.refresh.md` |
| Map guide | `skeleton\docs\AI_CONTEXT.README.md` | none: written from the design requirement | - |
| Architecture map | `skeleton\docs\ARCHITECTURE.md` | "living doc, updated at handoff, rules never move here"; section set | `docs/ARCHITECTURE.md` |
| Roadmap | `skeleton\docs\ROADMAP.md` | checkboxes ticked only on verification (old roadmap); stable codes, numbered sub-sections, "do not reuse spent codes", sequence at a glance, deferred list (master roadmap) | `docs/ROADMAP.md`, `docs/plans/master-roadmap.md` |
| Decision record | `skeleton\docs\decisions\` | dated file, D-numbered decisions, supersession carried by the newer record, non-goals, implementation cross-reference, verification status, open questions then resolutions | `docs/decisions/*.md` |
| Plan / spec | `skeleton\docs\plans\` | problem, root cause, owner decision with alternatives, non-goals, compatibility, tests, owner verification | `docs/plans/session-snapshot-bounded.md`, `docs/plans/cdn-prod-staging-split.md` |
| Task report | `skeleton\docs\reports\` | root cause, candidate fixes, change summary, evidence folder, regression results, findings and owner questions | `docs/release/atlas-card-bar/REPORT.md` and the six other reports |
| Follow-ups and owner checks | `skeleton\docs\FOLLOWUPS.md` | numbered ids cited elsewhere; a running list of deferred owner verification | `docs/plans/core-followups.md`, `docs/plans/ios-test.md`, `STATE.md` lines 12-24, `docs/release/qa-consent-v1.md` |
| Stored prompt | `skeleton\docs\prompts\README.md`; shape in the map's "How we work" | parameter block, dry-run mode, bounded reading, gates, paste-ready report | `real-assets-to-apk.md`, `MASTER-PROMPT.md`, `docs/AI_CONTEXT.refresh.md` |
| Commands | `skeleton\.claude\commands\` | plan then STOP; copy the approved plan into the journal; close-out routine | `.claude/commands/milestone.md`, `handoff.md` |
| `.gitignore` choice | `skeleton\.gitignore` | the commented block that records the choice | `.gitignore` lines 1-8 |
| Acceptance scripts (opt-in) | `skeleton\_optional\acceptance\` | conventions and the Check skeleton | `docs/acceptance/README.md`, `docs/acceptance/m0.ps1` |
| Permissions (opt-in) | `skeleton\_optional\permissions\` | allow / deny shape; git changes and gh denied; `.claude/` write-protected | `.claude/settings.json` |

## 6. Template rules and their evidence

| Rule in the template | Evidence in wpg |
|---|---|
| Decisions win on conflict; the conflict is recorded, never silently merged | [V] `docs/decisions/2026-07-11-product-decisions.md`:4-9; `docs/ROADMAP.md`:6-7; `docs/plans/master-roadmap.md`:6-7 |
| A newer decision supersedes and carries the supersession | [V] `docs/decisions/2026-10-25-rename-inkfathom.md`:6-8 |
| Rules live in the constitution, never in the architecture doc | [V] `docs/ARCHITECTURE.md`:2-4 |
| The exit code of an executable gate is the verdict | [V] `docs/acceptance/README.md`:2 |
| One fact, one source | [V] `CLAUDE.md` section 8 header and section 6 ("config.ts is the live list"); `docs/content/pack-ordering.md` |
| Stable ids, cited by prompts, never reused | [V] `docs/plans/master-roadmap.md`:11-14 |
| Corrections are visible | [V] `docs/plans/master-roadmap.md`:95-98 |
| Owner-only checks are never faked green | [V] `CLAUDE.md` section 3, last paragraph; `docs/acceptance/README.md`:8-10 |
| Baseline before, same failing names after | [V] `journal/2026-11-16.md`:22-24, 97-99; `STATE.md`:22 |
| A new guard must be shown to fail | [V] `journal/2026-11-16.md`:38-40 |
| No silent fallbacks | [V] `docs/plans/core-followups.md`:17-27 |
| Diagnose before fixing | [V] `journal/2026-09-14.md` (Phase 1 MEASURE, then Phase 2 FIX); reports titled "diagnosis, no code change" |
| Check cited identifiers on disk | [V] `journal/2026-11-16.md` F1; `docs/AI_CONTEXT.md`:151 (a doc cited by ten source files does not exist) |
| Do not add a path that nothing triggers | [A], partly [V]: `STATE.md`:4 ("has no caller"), `journal/2026-11-16.md` F6 |
| Dependencies need a written reason | [V] `CLAUDE.md` section 10; `docs/POLICY.md` rule 3 |
| Size caps in lines and line length; no history in STATE | [V] `STATE.md`: exactly 25 lines, as its "max 25 lines" rule demands, but 61,942 characters (about 28,000 tokens); the longest line has 31,958 characters |
| The constitution holds rules, not history | [V] `CLAUDE.md` sections 6 and 8: dated REMOVED / ADDED / CONSOLIDATED paragraphs; 472 lines |
| Dead docs are deleted | [A] as a lesson; [V] as the cost of the opposite: `docs/ROADMAP.md`, `docs/POLICY.md`, `docs/PROPOSED-*`, `docs/pr_body.md`, `docs/content-staging/` kept and indexed as PARKED |
| The working loop (web chat, prompt, Claude Code, owner verification, map) | [V] `docs/AI_CONTEXT.md`:300-305; journal "Input:" lines from 2026-11-03 on |

Prompt-shape elements: self-contained opener, scope line, parameter block with dry-run, bounded reading, propose then STOP, named gates, no commit, owner steps at the end, paste-ready report and id citation are [V] (`docs/AI_CONTEXT.refresh.md`:1-20, `real-assets-to-apk.md`:11-90, `journal/2026-07-17.md` sessions 1-4). An explicit "files NOT to read" list, the sentence "if the hypothesis is wrong, STOP and report", VERIFIED / ASSUMED tags inside prompts, and a mode / model / effort line are [A]: they come from the owner's description and were not found in the sampled files. The behaviour behind the hypothesis rule is [V] (`journal/2026-10-30.md`:124).

## 7. DOMAIN set aside (pointers, not copies)

| What | Where in wpg |
|---|---|
| Product, stack, locale rules, content model, economy, save schema, analytics events, out-of-scope list | `CLAUDE.md` sections 1, 2, 4, 5, 6, 7, 8, 9 |
| Design reference | `docs/DESIGN-SYSTEM.md` |
| Deferred feature spec | `docs/MASCOT.md` |
| Release references and audits | `docs/release/*.md` |
| Executable release gate | `scripts/release-check.mjs`, `scripts/release-guards.mjs` |
| Runbooks | `docs/runbooks/*.md` |
| Single-rule reference (rule, how to change it, checklist) | `docs/content/pack-ordering.md` |
| Feature specs and design records | the LIVE and STALE DOMAIN rows of `docs/plans/` in 4.1 |
| Content generation prompts | `docs/plans/single-prompt-generation-v2*.md`, `docs/plans/create/` |
| Art prompt system and registry | `docs/plans/asset-creation/in-game-packs/`, `docs/plans/visual-asset-generation-system.md` |
| Content pipeline data | `tools/content/data/` |
| Legal source and declarations | `legal/` |
| Store assets and listing | `marketing/store/` |
| Asset provenance | `assets/audio/SOURCES.md` |
| Stack gates | `package.json` scripts |

## 8. Dropped, and what killed it

| Machinery | Last sign of life | What killed it | Template |
|---|---|---|---|
| Loop runner (`loop/loop.ps1`, `milestones.json`, `status.json`) | last commit 2026-07-12; journal mentions 07-10 .. 07-12 | it never ran: no `loop/current_plan.md`, no logs, and its branch names (`milestone/m0-scaffold`) are in no ref; `status.json` was set by hand through `-MarkPassed`. `loop.ps1`:2-4 itself says to prefer a proven runner | dropped |
| Acceptance scripts | one commit, 2026-07-11; m0-m5, m8 | the agent may neither run nor edit them, so every change waited on the owner; M3.5 passed with no script; no script for any later milestone code; `m4.ps1` knowingly red since 2026-10-12 (`STATE.md`:15). Successor: gates as package scripts and guard tests | opt-in |
| `/milestone`, `/handoff` | journal mentions end 2026-07-18 and 2026-07-13 | wired to the acceptance script, the `kickoff` field, `docs/pr_body.md` and `-MarkPassed`; replaced by web-chat prompts with plan approval and by the standing rule in `CLAUDE.md` section 11 | kept, without the loop wiring |
| `docs/POLICY.md` | one commit, 2026-07-11 | loop-specific; declared dead in `docs/plans/master-roadmap.md`:8-9 | dropped; four rules folded into `CLAUDE.md` |
| `docs/ROADMAP.md` | last commit 2026-07-20 | bound to M0-M8 and loop tags; superseded 2026-07-17; its checkboxes were never ticked by the handoff (`docs/WORKFLOW-COMPARISON.md` P2) | merged into one roadmap |
| `docs/plans/master-roadmap.md` | modified 2026-09-14 | carries a state narrative (section 0), a security scan (section 7) and an open decision (section 9) that other docs own; work moved to prompts planned in the web chat; `STATE.md`:2 still calls it the source of truth | merged, without state |
| `docs/plans/core-followups.md` | modified 2026-10-13 | items grew into multi-paragraph narratives (1,304 lines); carried items moved into `STATE.md` | lean list |
| `docs/pr_body.md` | 2026-07-12 | a third copy of the same summary (`docs/WORKFLOW-COMPARISON.md` P1) | dropped |
| `docs/PROPOSED-*` | 2026-07-13 | a workaround for the write-protected acceptance folder | dropped |
| `docs/content-staging/` | 2026-07-28 | build reports of a pipeline replaced by one-pass authoring from 2026-09-17 (`docs/AI_CONTEXT.md`:117-118) | dropped; the reports type covers the need |
| WebFetch / WebSearch deny rules | in force | sources could not be checked (`STATE.md`, entry of 2026-10-26: "web fetches refused") | not carried over |
| Blanket git deny | in force | the refresh prompt's git signal never worked (`docs/AI_CONTEXT.md`:7-10) | replaced: git changes denied, read-only git allowed |

## 9. Deliberate differences from wpg's practice

| In the template | In wpg | Reason |
|---|---|---|
| STATE cap of 30 lines and 160 characters per line; no "Earlier" history | 25 lines, 61,942 characters (about 28,000 tokens); 24 of the 25 lines exceed 160 characters | size caps get gamed |
| The map is changed only by the refresh prompt | edited in passing; the header says 2026-10-16, the body holds facts of 2026-11-16 | design requirement |
| The map's snapshot date is in its title, and "Current focus" is one line and last | date on line 3; focus is four lines, followed by another section | design requirement |
| The refresh prompt works when git is blocked and handles the first run | assumes git and an existing map | silent fallback |
| A superseded decision record gets one addition to its Status line | newer records leave the old one unedited (the first record does annotate inline) | stale docs mislead |
| Reports live in dated folders under `docs/reports/` | undated topic folders under `docs/release/` | a dated name marks a frozen record |
| Closed follow-up items are deleted; the journal keeps the record | closed items kept as long narratives | lean list |
| One roadmap, with no state narrative | two roadmaps, both out of date | one doc per fact |
| One file for owner checks and deferred work | four places | one doc per fact |
| Stored prompts have their own folder | mixed into `docs/plans/` with unlabeled variants | pile-up |
| The placeholder search skips `_TEMPLATE` files | no placeholders existed | per-record templates keep their blocks |

## 10. Lineage claims against disk

The lineage was the owner's account of how the scaffold evolved, supplied with the task and treated as ASSUMED.

| Claim | Disk |
|---|---|
| `docs/ARCHITECTURE.md` is stale | contradicted: edited 2026-11-16, dated notes of 11-12 and 11-15, named in 10 journal entries since 10-01 |
| The loop variant has `LOOP-PLAYBOOK.md` and `LOOP-LEARNINGS.md` | neither exists; only a comment in `loop/loop.ps1`:2 |
| `milestones.json` has `effort` and `depends_on` | fields are `id, title, branch, deps, loop_enabled, acceptance, kickoff`, optional `plan_model, max_turns`; no `effort` |
| `STATE.md` is about 25 lines of verified facts | 25 lines as ruled, but 61,942 characters (about 28,000 tokens); line 25 carries some 60 suggested commit messages |
| The map is well under 200 lines, dated on the top line, has no to-do list and ends with a one-line focus | 317 lines; the date is on line 3 and older than the body; it holds backlog sections; the focus is four lines and not last |
| The refresh prompt uses git log and status as change signals | the text says so, but `.claude/settings.json` denies all git and the map records the denial |
| `handoff.md` ticks the roadmap for verified work and replies in one line | wpg's copy does neither; it writes `docs/pr_body.md` |
| `milestone.md` plans manual verification steps and out-of-scope | wpg's copy maps tests to the acceptance script and reads the `kickoff` field |
| Branches `mN-shortname`, pull requests to main | true for July; since 2026-07-20 one branch with 5 commits and a large uncommitted tree |
| The follow-ups list and the master roadmap are the live plan docs | both exist; both have gone stale |
| Settings deny git and gh and protect acceptance, loop and .claude | verified; WebFetch and WebSearch are denied too |
| A later scaffold added `docs/DECISIONS.md` with ADR numbers, a NEEDS-DEVICE section and a README reading order | none of the three is in wpg; they stay ASSUMED |
| Decisions win on conflict; CLAUDE.md sections are cited; the acceptance README says the exit code is the verdict; a workflow comparison exists | verified |
| Internal to wpg: `CLAUDE.md` section 10 says workflow docs are gitignored | they are tracked; the ignore lines are commented out (also noted in `docs/plans/master-roadmap.md` section 7, S3) |

## 11. Open questions and how they were settled

The owner approved the plan on 2026-11-16 with the recommended defaults.

| Question | Settled as |
|---|---|
| Keep `/milestone` and `/handoff` although wpg stopped using both? | kept, without the loop wiring |
| One follow-ups file for owner checks and deferred work? | yes: `docs\FOLLOWUPS.md`, parts A and B |
| Opt-in machinery | loop runner out; acceptance scripts opt-in; permissions opt-in, allowing read-only git |
| `.gitignore` default | workflow files committed; the local-only lines present but commented |
| Stored prompts | own folder `docs\prompts\` |

## 12. Not verified

- The template has not started a project yet: the bootstrap prompt, the update prompt, the commands and the permissions file are untested in use.
- The permission rule forms were checked against the Claude Code permission docs on 2026-11-16 and against wpg's working file; the exact file was not run.
- `docs/plans/content-delivery-e2e-test.md` is classed STALE on its dates alone; it was not read in full.
- "Never ran" for the loop runner rests on absence of traces, which cannot prove a negative.
