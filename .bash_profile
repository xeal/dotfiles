# ~/.bash_profile: executed by bash when invoked as an interactive login shell, or as a non-interactive shell with the --login option.


# My stuff
# ########

# Most of the config is in .bashrc
[[ -r ~/.bashrc ]] && . ~/.bashrc

# Not under version control
[[ -r ~/.xealrc ]] && . ~/.xealrc

# Aliases
[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases


# Completion
# ##########

[[ -r $(brew --prefix)/etc/bash_completion.d/brew ]] && . $(brew --prefix)/etc/bash_completion.d/brew
[[ -r $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]] && . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
[[ -r $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]] && . $(brew --prefix)/etc/bash_completion.d/git-prompt.sh


# Prompt
# ######

TITLEBAR='\[\033]0;\w\007\]'
PROMPT='\[\033[0;31m\]\u@\h\[\033[0m\]:\[\033[0;32m\]\w\[\033[0m\]$(__git_ps1 "(%s)")\$ '
PS1="${TITLEBAR}${PROMPT}"


# # Load rbenv automatically
eval "$(rbenv init -)"

