# ~/.bashrc: executed by bash(1) for non-login shells.


# Shell Options
# #############

# Don't wait for job termination notification
# set -o notify

# Don't use ^D to exit
# set -o ignoreeof

# Use case-insensitive filename globbing
# shopt -s nocaseglob

# Set file creation mask to u=rwx,g=rx,o=rx
umask 0022


# History Options
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


# Common enviroment variables
#############################

export CLICOLOR=1

export EDITOR=vim

# memcached
export EVENT_NOKQUEUE=1

# JVM on OS X defaults to MacRoman - genius!
export JAVA_TOOL_OPTIONS='-Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8'

export LANG='en_US.UTF-8'

export LC_ALL='en_US.UTF-8'

export LESS='-i'

export LSCOLORS=ExGxBxDxCxEgEdxbxgEcEd

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export RAILS_ENV=development

