> **Purpose:** start a milestone: read the minimum, write a plan, stop for approval.
> **Reader:** agent, when the owner types `/milestone <code>`.
> **Authority:** none of its own. It applies `CLAUDE.md` §8 and §11; if they disagree with this file, they win and this file is fixed.
> **Updated when:** the planning routine itself changes.
> **Status:** CURRENT.

Plan milestone $ARGUMENTS. Write no code and change no file in this step.

1. Read, in this order: `CLAUDE.md`, `STATE.md`, the section for $ARGUMENTS in `docs/ROADMAP.md`,
   the parts of `docs/ARCHITECTURE.md` that the milestone touches, and every decision record that
   section cites. Do not read the journal, other plans or reports unless one of those files points
   to them.
2. Check the roadmap's premises against the repo. If a premise is false on disk (a file that does
   not exist, work that is already done, a dependency that is not finished), STOP and report that
   instead of planning around it.
3. Write a numbered plan:
   - the files to create or change, in the order you will touch them;
   - what each step delivers;
   - the gates you will run (`CLAUDE.md` §8, rule 5) and the tests you will add;
   - manual verification steps for the owner: what to do and what to expect;
   - what is explicitly out of scope;
   - every premise tagged VERIFIED (with the path you checked) or ASSUMED;
   - any new dependency, with its reason.
4. STOP. Wait for the owner's explicit approval. Do not start on a partial approval.
5. After approval: copy the approved plan into today's journal entry (`journal/README.md` has the
   format), record the gate baseline, then implement exactly that plan.
6. Never change git state. When the work is done, tell the owner to run `/handoff $ARGUMENTS`.
