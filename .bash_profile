# ~/.bash_profile: executed by bash when invoked as an interactive login shell, or as a non-interactive shell with the --login option.

# Enviroment variables
######################

eval "$(/opt/homebrew/bin/brew shellenv)"
# export HOMEBREW_NO_INSTALL_CLEANUP=true

# macOS 10.15+
export BASH_SILENCE_DEPRECATION_WARNING=1

export CLICOLOR=1

export EDITOR=vim

export LANG='en_US.UTF-8'

export LC_ALL='en_US.UTF-8'

export LESS='-i'

export LSCOLORS=ExGxBxDxCxEgEdxbxgEcEd

# XDG Base Directory Specification
export XDG_CACHE_HOME="${HOME}/.cache"       # Ephemeral data files
export XDG_CONFIG_HOME="${HOME}/.config"     # Configuration files
export XDG_DATA_HOME="${HOME}/.local/share"  # Persistent data files
export XDG_STATE_HOME="${HOME}/.local/state" # State data files


# Load additional dot files
###########################

# Not much left in .bashrc
[[ -r "${HOME}/.bashrc" ]] && . "${HOME}/.bashrc"

# Not under version control
[[ -r "${HOME}/.xealrc" ]] && . "${HOME}/.xealrc"


# History options
#################

# Erase duplicates from history
HISTCONTROL=erasedups:ignoreboth

# Ignore some controlling instructions
HISTIGNORE="&:bg:exit:fc:fg:history*"

# Store 10k history entries
HISTSIZE=10000

# Append current session history to HISTFILE
shopt -s histappend

# Put a failed history substitution back on the command line
shopt -s histreedit

# Don't execute immediately the result of a history substitution. Allows further modifications via Readline.
# shopt -s histverify


# Completion
############

[[ -r ${HOMEBREW_PREFIX}/etc/bash_completion.d/brew ]] && . ${HOMEBREW_PREFIX}/etc/bash_completion.d/brew
[[ -r ${HOMEBREW_PREFIX}/etc/bash_completion.d/git-completion.bash ]] && . ${HOMEBREW_PREFIX}/etc/bash_completion.d/git-completion.bash


# General stuff
###############

# Set file creation mask to u=rwx,g=,o=
umask 0077

# Load rbenv automatically
eval "$(rbenv init -)"

# iTerm shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash" || true

# Rust
[[ -r "${HOME}/.cargo/env" ]] && . "${HOME}/.cargo/env"

# Set up fzf key bindings and fuzzy completion (https://github.com/junegunn/fzf)
eval "$(fzf --bash)"

export PATH="${HOME}/bin:${PATH}"
