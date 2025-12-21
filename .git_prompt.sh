#!/bin/sh
# Git prompt helper script
# Returns " (branch)" or " (branch)*" if dirty
# Used by tcsh/csh since they don't support command substitution in prompts
#
# Installation:
#   cp git_prompt.sh ~/.git_prompt.sh
#   chmod +x ~/.git_prompt.sh

branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
if [ -n "$branch" ]; then
    dirty=$(git status -s 2>/dev/null)
    if [ -n "$dirty" ]; then
        echo " ($branch)*"
    else
        echo " ($branch)"
    fi
fi