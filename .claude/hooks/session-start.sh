#!/bin/sh
# SessionStart: fetch origin and report where this checkout stands relative to main.
# Never merges or rebases a feature branch; only fast-forwards a clean main.

cd "${CLAUDE_PROJECT_DIR:-.}" || exit 0
git rev-parse --git-dir >/dev/null 2>&1 || exit 0

if ! git fetch -q origin 2>/dev/null; then
  echo "git: could not fetch origin (offline or no access). Status below may be out of date."
fi

branch=$(git rev-parse --abbrev-ref HEAD)

if ! git rev-parse -q --verify origin/main >/dev/null; then
  echo "git: origin/main not found; on branch $branch."
  exit 0
fi

if [ "$branch" = "main" ]; then
  if git merge --ff-only -q origin/main 2>/dev/null; then
    echo "git: on main, up to date with origin/main ($(git rev-parse --short HEAD))."
  else
    echo "git: on main but cannot fast-forward to origin/main (local changes or diverged). Resolve before starting work."
  fi
  echo "git: do not edit on main. Use /start-experiment <topic> to branch from the latest main."
else
  ahead=$(git rev-list --count origin/main..HEAD)
  behind=$(git rev-list --count HEAD..origin/main)
  echo "git: on $branch: $ahead commit(s) ahead, $behind behind origin/main."
  if [ "$behind" -gt 0 ]; then
    echo "git: origin/main has new commits. /publish will rebase this branch onto it."
  fi
fi

if [ -n "$(git status --porcelain)" ]; then
  echo "git: working tree has uncommitted changes."
fi
exit 0
