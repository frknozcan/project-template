# docs/decisions/

> **Purpose:** the dated records of what the owner decided about the product.
> **Reader:** agent (the records a prompt or the roadmap cites) · owner · web chat, through the map.
> **Authority:** the highest among docs: a decision record wins over `CLAUDE.md`, the roadmap, plans and the architecture doc. Among records, the newest wins.
> **Updated when:** the owner decides something that changes what the product is or does. The agent drafts the record; the owner approves its wording.
> **Status:** CURRENT.

## Naming
- One file per decision session: `docs/decisions/YYYY-MM-DD-<slug>.md`, copied from `_TEMPLATE.md`.
- Decisions inside a record are numbered D1, D2, ... Cite as "decisions 2026-01-31 D2".

## Rules
- A record states what was decided, the alternatives that were rejected, and why. It is not a plan and not a spec.
- When another doc disagrees with a record, the record wins. The conflict is written down in the journal entry that found it and the other doc is fixed; nothing is merged silently.
- A decision is changed only by a newer record that names what it supersedes. The body of the old record stays as written; its Status line gets one addition, for example "D2 superseded by 2026-03-15-<slug> D1".
- A question that is still open is not a decision. It sits under "Open questions" and, once answered, becomes a numbered decision in the same or a newer record.
- Only the owner decides. An agent that needs a decision asks, and offers a recommended default.
