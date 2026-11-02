---
name: start-experiment
description: Create a personal feature branch from the latest origin/main to start an experiment. Use when the user runs /start-experiment <topic>.
argument-hint: <topic>
disable-model-invocation: true
---

# Start an experiment

Create `<prefix>/feature-<topic>` from the latest `origin/main`.

## Inputs
- `<topic>`: the argument. If missing, ask the user for one short topic.
- Slugify it: lowercase, spaces and punctuation to `-`, max ~40 chars.
- `<prefix>`: the `BRANCH_PREFIX` environment variable (set in `.claude/settings.local.json`, for example `raj`). If it is not set, ask the user which prefix to use and tell them to add `{"env": {"BRANCH_PREFIX": "<prefix>"}}` to `.claude/settings.local.json`.

## Steps
1. Run `git status --porcelain`. If the tree is dirty, show the changes and ask the user how to proceed: carry them onto the new branch, stash them, or stop. Do not discard anything.
2. Run `git fetch origin`.
3. Check the branch name does not already exist locally or on origin (`git branch --list`, `git ls-remote --heads origin <name>`). If it does, ask whether to switch to it or pick another name.
4. Create the branch from the latest main: `git switch -c <prefix>/feature-<slug> origin/main`. Use `--no-track` so it does not track `origin/main`.
5. Report the branch name and the `origin/main` commit it starts from (`git log -1 --oneline origin/main`).
6. Remind the user: nothing is committed or pushed until they run `/publish`.

## Rules
- Never create a branch named `main` or one without the `<prefix>/feature-` form.
- Do not push anything in this command.
