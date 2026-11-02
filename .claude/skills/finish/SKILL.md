---
name: finish
description: After a PR is merged, return to the latest main and clean up the local feature branch. Use when the user runs /finish.
disable-model-invocation: true
---

# Finish an experiment

1. Note the current branch (`git rev-parse --abbrev-ref HEAD`). If it is `main`, ask which branch to clean up, or stop.
2. Check the PR state: `gh pr view <branch> --json state,mergedAt,url`.
   - `MERGED`: continue.
   - `OPEN`: tell the user the PR is still under review and stop. Nothing is deleted.
   - `CLOSED` (not merged) or no PR: say so, and ask before deleting anything, since the work would exist only on this branch.
3. If the working tree has uncommitted changes, show them and ask what to do. Do not discard them.
4. `git switch main`, `git fetch origin`, `git merge --ff-only origin/main`. If it cannot fast-forward, report why and stop.
5. Delete the local branch. Because the PR was squash-merged, git will not see the branch as merged, so `git branch -d` will refuse. Once step 2 has confirmed `MERGED`, use `git branch -D <branch>`. Mention the commit it pointed to (`git rev-parse --short <branch>` before deleting) so it can be recovered from the reflog.
6. The remote branch is deleted by GitHub if "Automatically delete head branches" is on. If it still exists (`git ls-remote --heads origin <branch>`), tell the user and offer `git push origin --delete <branch>`. Ask before running it.
7. Report: now on main at `<short sha>`, branch `<name>` removed. Suggest `/start-experiment <topic>` for the next one.
