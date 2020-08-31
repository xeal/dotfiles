# ~/.bashrc: executed by bash for interactive, non-login shells.

# Aliases
[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases

# Shell Options
# #############

# Don't wait for job termination notification
# set -o notify

# Don't use ^D to exit
# set -o ignoreeof

# Use case-insensitive filename globbing
# shopt -s nocaseglob


# Prompt
# ######

[[ -r $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]] && . $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

TITLEBAR='\[\033]0;\w\007\]'
PROMPT='\[\033[0;31m\]\u@\h\[\033[0m\]:\[\033[0;32m\]\w\[\033[0m\]$(__git_ps1 "(%s)")\$ '
PS1="${TITLEBAR}${PROMPT}"
