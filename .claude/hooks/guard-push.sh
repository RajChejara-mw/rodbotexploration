#!/bin/sh
# PreToolUse (Bash): block pushes to main and plain force pushes.
# --force-with-lease on a feature branch is allowed (needed after a rebase).

cmd=$(jq -r '.tool_input.command // empty')
[ -z "$cmd" ] && exit 0

echo "$cmd" | grep -Eq '(^|[;&|(] *)git( +-[^ ]+)* +push( |$)' || exit 0

block() {
  echo "Blocked: $1" >&2
  exit 2
}

# plain force (-f, --force, --force-if-includes alone is fine); --force-with-lease is allowed
stripped=$(echo "$cmd" | sed 's/--force-with-lease[^ ]*//g; s/--force-if-includes//g')
echo "$stripped" | grep -Eq '(^| )(-f|--force)( |$)|(^| )-[a-zA-Z]*f[a-zA-Z]*( |$)' &&
  block "force push. Use /publish, which uses --force-with-lease on your own branch."

# explicit push to main/master, including HEAD:main and +main
echo "$cmd" | grep -Eq '(^| |:|\+)(main|master)( |$|;|&|\|)' &&
  block "pushing to main is not allowed. Publish your branch and open a PR with /publish."

# bare 'git push' while checked out on main
current=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
if [ "$current" = "main" ] || [ "$current" = "master" ]; then
  block "you are on $current. Create a branch with /start-experiment first."
fi
exit 0
