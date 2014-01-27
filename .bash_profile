# ~/.bash_profile: executed by bash(1) for login shells.

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

[[ -r $(brew --prefix)/etc/bash_completion ]] && . $(brew --prefix)/etc/bash_completion

[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion


# RVM (https://rvm.io)
# ####################
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

