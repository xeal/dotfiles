# To override the alias use a "\" before it. Ex: "\rm" will call the real "rm" not the alias.

# Interactive operations
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Enable color support for ls and also add handy aliases
alias ls='ls -F'     # display additional visual cues
alias ll='ls -la'    # long list + list all
alias lh='ls -lah'   # long list + list all + human-readable file sizes
alias le='ls -@lae'  # extended attribute keys and sizes + long list + list all + ACL

alias diff='diff --exclude=.svn --exclude=.git'

# See http://doug.warner.fm/d/blog/2008/07/Version-controlling-my-home-dir
#alias hgit='git --git-dir=$HOME/.homegit --work-tree=$HOME -c core.excludesfile=$HOME/.homegitignore'

