#!/bin/bash
alias realias='source ~/.bash/aliases.bash'
alias aliases='vi ~/.bash/aliases.bash && realias'

# enable grep colors
alias grep='grep --color=auto'
alias rgrep='grep -rn'

# some more ls aliases
alias ls='ls -GF'
alias ll='ls -lh'
alias la='ll -A'
alias ld='ll | grep "^d"'
alias l='ls -1'

# open vertical vim bufers
alias vi='vim'
alias vim='vim -O'

# python
alias py='python -ic "import readline, rlcompleter; readline.parse_and_bind(\"tab: complete\"); del readline, rlcompleter"'

# picocom
alias pcom='picocom -b 115200 -l'

# fastboot
alias fastboot='sudo ~/code/android_tools/fastboot'
alias usbboot='sudo ~/code/android_tools/usbboot ~/code/android_tools/bootloader.bin'

# week number
alias week='date +%W'
alias day='date +%a | tr \"[:upper:]\" \"[:lower:]\"'

# repo sync re-try
alias repo-sync='time until repo sync; do echo "FAILED: trying again"; done'

# git
alias g='git'
alias gg='git s'
alias gd='git d'
alias gl='git l'

# rails
alias be='bundle exec'
alias bi='bundle install'

# TextMate
alias m='mate'

# dir size
alias dirsize='du -c -h'

# used disk space
alias used='df -h | grep /$ | cut -c 41-43'

# get OS X software updates
# update Homebrew itself, and upgrade installed Homebrew packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade'

# show/hide Desktop icons
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

