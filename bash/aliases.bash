#!/bin/bash
alias realias='source ~/.bash/aliases.bash'
alias aliases='vi ~/.bash/aliases.bash && realias'

# some more ls aliases
alias ls='ls -GF'
alias ll='ls -lh'
alias la='ll -A'
alias l='ls -1'

# python
alias py='python -ic "import readline, rlcompleter; readline.parse_and_bind(\"tab: complete\"); del readline, rlcompleter"'

# week number
alias week='date +%V'
alias day='date +%a | tr \"[:upper:]\" \"[:lower:]\"'

# repo sync re-try
alias repo-sync='time until repo sync; do echo "FAILED: trying again"; done'

# git
alias gg='git st'
alias gd='git diff'
alias gl='git oneline'

# rails
alias b='bundle exec'
alias sp='bundle exec rspec'

# ack
alias a='ack'

# dir size
alias dirsize='du -c -h'

# used disk space
alias used='df -h | grep /$ | cut -c 41-43'

# show/hide Desktop icons
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
