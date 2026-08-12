# To override the alias use a "\" before it. Ex: "\rm" will call the real "rm" not the alias.

# interactive + verbose
alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# aws: CLI pager for output.
alias aws='aws --no-cli-pager'

# bundler
alias be='bundle exec'

# diff: report files which are the same, which are otherwise not mentioned
alias diff='diff -s'

# fd: always search hidden files and show errors
alias fd='fd --hidden --show-errors'

# ls: enable color support and also add handy aliases
alias ls='ls -F'               # display additional visual cues
alias l='ls -la'               # long list + list all
alias ll='ls -la'              # long list + list all
alias lh='ls -lah'             # long list + list all + human-readable file sizes
alias le='ls -@lae'            # extended attribute keys and sizes + long list + list all + ACL
alias lld="ls -la -D '%F %T'"  # long list + list all + ISO timestamps

# lsd: long list + list all
alias lsd='lsd -la'
