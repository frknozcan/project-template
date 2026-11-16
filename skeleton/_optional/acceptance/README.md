# Optional: acceptance scripts

Adopt when a milestone has exit criteria a script can check without the owner: files exist, the gates pass, a contract holds.
One script per milestone, written at plan time, before the implementation; its exit code is the verdict on "done".
Skip it when the work is exploratory or its proof needs the owner's hands; the gates in `CLAUDE.md` §8 and `docs/FOLLOWUPS.md` part A cover that.
To adopt: copy the contents of `files\` into the project root, then name `docs/acceptance/` as a gate in the block for further gates at the end of `CLAUDE.md` §8.
The owner runs the scripts and is the only one who edits them; an agent that finds a wrong check reports it as a finding.
