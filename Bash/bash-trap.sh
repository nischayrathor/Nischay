#!/bin/bash
# viman - start "vi" with a manual page

Tmp="${TMPDIR:=/tmp}/vm$$"

# Assure the file is removed at program termination
# or after we received a signal:
trap 'rm -f "$Tmp" >/dev/null 2>&1' 0
trap "exit 2" 1 2 3 13 15

EXINIT="set ignorecase nowrapscan readonly"
export EXINIT

man "$@" | col -b | uniq > "$Tmp" || exit

[ -s "$Tmp" ] || exit 0		# file is empty
head -1 < "$Tmp" |
    grep 'No.*entry' && exit 0 # no manual page

${EDITOR:-vi} "$Tmp"
