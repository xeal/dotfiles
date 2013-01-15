# ~/.bash_profile: executed by bash(1) for login shells.


# Most of the stuff is in .bashrc
[[ -r ~/.bashrc ]] && . ~/.bashrc


# Not under version control
[[ -r ~/.xealrc ]] && . ~/.xealrc


# Aliases
[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases


# Completion
[[ -r /etc/bash_completion ]] && . /etc/bash_completion

[[ -r /opt/local/etc/bash_completion ]] && . /opt/local/etc/bash_completion

[[ -r /opt/local/share/git-core/git-prompt.sh ]] && . /opt/local/share/git-core/git-prompt.sh

[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion


# RVM (https://rvm.io)
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

