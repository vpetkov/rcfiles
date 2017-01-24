#!/bin/bash
alias realias='source ~/.bash/aliases.bash'
alias aliases='vi ~/.bash/aliases.bash && realias'
alias vimrc='vi ~/.vimrc'
alias gitconfig='vi ~/.gitconfig'
alias functions='vi ~/.bash/functions.bash && source ~/.bash/functions.bash'
alias hosts='sudo vi /etc/hosts'

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

# vim
alias vi='vim -p'
alias vg='vim -p `git status --porcelain | grep " M\|A " | cut -d" " -f3`'

# rails
alias b='bundle exec'
alias sp='bundle exec rspec'

# ack
# alias a='ack'

# dir size
alias dirsize='du -c -h'

# used disk space
alias used='df -h | grep /$ | cut -c 41-43'

# show/hide Desktop icons
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
