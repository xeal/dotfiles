# ~/.bash_profile: executed by bash when invoked as an interactive login shell, or as a non-interactive shell with the --login option.


# Load additional dot files
# ########

# Not much left in .bashrc
[[ -r ~/.bashrc ]] && . ~/.bashrc

# Not under version control
[[ -r ~/.xealrc ]] && . ~/.xealrc

# Aliases
[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases


# Enviroment variables
#############################

export CLICOLOR=1

export EDITOR=vim

# memcached
export EVENT_NOKQUEUE=1

export GOPATH="$HOME/go"

export LANG='en_US.UTF-8'

export LC_ALL='en_US.UTF-8'

export LESS='-i'

export LSCOLORS=ExGxBxDxCxEgEdxbxgEcEd

export PATH=$HOME/bin:$PATH


# History options
# ###############

# Erase duplicates from history
export HISTCONTROL=erasedups

# Ignore some controlling instructions
export HISTIGNORE="[ ]*:&:bg:fg:exit"

# Store 10k history entries
export HISTSIZE=10000

# Append current session history to HISTFILE
shopt -s histappend

# Put a failed history substitution back on the command line
shopt -s histreedit


# Completion
# ##########

[[ -r $(brew --prefix)/etc/bash_completion.d/brew ]] && . $(brew --prefix)/etc/bash_completion.d/brew
[[ -r $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]] && . $(brew --prefix)/etc/bash_completion.d/git-completion.bash


# General stuff
###############

# Set file creation mask to u=rwx,g=,o=
umask 0077

# Load rbenv automatically
eval "$(rbenv init -)"

# iTerm shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash" || true
