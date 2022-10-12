# ~/.bash_profile: executed by bash when invoked as an interactive login shell, or as a non-interactive shell with the --login option.


# Load additional dot files
# ########

# Not much left in .bashrc
[[ -r ~/.bashrc ]] && . ~/.bashrc

# Not under version control
[[ -r ~/.xealrc ]] && . ~/.xealrc


# Enviroment variables
######################

# macOS 10.15+
export BASH_SILENCE_DEPRECATION_WARNING=1

export CLICOLOR=1

export EDITOR=vim

# memcached
export EVENT_NOKQUEUE=1

export HOMEBREW_NO_INSTALL_CLEANUP=true

export LANG='en_US.UTF-8'

export LC_ALL='en_US.UTF-8'

export LESS='-i'

export LSCOLORS=ExGxBxDxCxEgEdxbxgEcEd

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"


# History options
# ###############

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

# Rust
. "$HOME/.cargo/env"

PATH="$HOME/bin:$PATH"
