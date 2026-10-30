---
name: publish
description: Commit the current feature branch, rebase it on the latest origin/main, push it and open or update a pull request for review. Always asks for approval first. Use when the user runs /publish.
disable-model-invocation: true
---

# Publish the current branch as a PR

Nothing leaves the machine until the user approves in step 5.

## 1. Check the branch
- `git rev-parse --abbrev-ref HEAD` must not be `main`. If it is, stop and tell the user to run `/start-experiment <topic>` first. If they have uncommitted work on main, offer to move it onto a new branch.
- The branch should look like `<prefix>/feature-*`. If it does not, tell the user and ask whether to continue.
- If a rebase is already in progress (`.git/rebase-merge` or `.git/rebase-apply` exists), stop and help the user finish or abort it.

## 2. Look at what would be published
- `git fetch origin`
- `git status --short` and `git diff --stat origin/main...HEAD` (committed work) plus the uncommitted changes.
- Read the actual diff so the messages below describe the real change.
- Scan the file list for things that should not be published: `.env*`, `*.pem`, `*.key`, `credentials*`, tokens, large or unexpected files. If any are present, flag them and do not stage them without the user saying so.
- If there is nothing to publish (no uncommitted changes and no commits ahead of origin/main), say so and stop.

## 3. Draft the messages
Draft all of these now so one approval covers them:
- Commit message: a short imperative subject and a few lines of body if useful. End it with the attribution line from the session's system reminder, if one is present.
- PR title (under 70 characters).
- PR body: a short summary of what changed and why, and what the reviewer should check. If the diff touches `.xlsx` or `.pdf` files, tell the reviewer those are binary and cannot be line-diffed. End it with the attribution line from the system reminder, if one is present.
- Reviewer: if `.github/CODEOWNERS` exists, GitHub will request the owner automatically. Otherwise ask the user for a reviewer's GitHub username, or skip.

## 4. Check for an existing PR
Run `gh pr view --json url,state,number 2>/dev/null`. If an open PR exists for this branch, this publish updates it, so the PR title and body are left alone unless the user asks to change them.

## 5. Ask for approval (AskUserQuestion)
Show: the branch, the file list with the diff stat, the commit message, the PR title and body, the reviewer, and whether this creates a new PR or updates PR #N. Ask whether to publish. Offer: publish as drafted, edit the messages, or cancel. If the user cancels, stop. Nothing has been committed, rebased or pushed.

## 6. Commit
Stage the approved files explicitly (`git add <paths>`, not `git add -A` if anything was flagged) and commit. One commit per publish is enough, because the PR is squash-merged on GitHub.

## 7. Rebase on the latest main
`git rebase origin/main`
- On conflict: stop. List the conflicted files and explain what is in conflict. Never resolve a conflict in a `.xlsx` or `.pdf` by guessing. Ask the user which version to keep. Offer `git rebase --abort`, which returns the branch to its pre-rebase state. Do not push while a rebase is unfinished.
- After resolving, `git rebase --continue`, and re-check the diff stat.

## 8. Push
- First publish of this branch: `git push -u origin HEAD`.
- Branch already on origin and rebased: `git push --force-with-lease origin HEAD`. Never use plain `--force`, and never push to `main` (a hook blocks both).
- If the push is rejected for permission or authentication, report the exact error and stop. Do not try other remotes or credentials.

## 9. Open or update the PR
- New: `gh pr create --base main --head <branch> --title "<title>" --body "<body>"`, plus `--reviewer <user>` if one was chosen.
- Existing: it is already updated by the push. Report its URL.
- Report the PR URL as the last line of the output.

## Rules
- Never merge the PR, and never push to `main`.
- Never skip step 5, even if the user has run `/publish` many times before.
