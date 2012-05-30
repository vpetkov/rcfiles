#!/bin/bash
alias realias='source ~/.bash/aliases.bash'
alias aliases='vi ~/.bash/aliases.bash && realias'

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
alias py='ipython'

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
alias gu='git update'
alias gg='git status'
alias glg='git lg'
alias gla='git la'
alias gl='git ls'

if [[ "$OSTYPE" =~ ^darwin ]]
then
    # get OS X software updates
    # update Homebrew itself, and upgrade installed Homebrew packages
    alias update='sudo softwareupdate -i -a; brew update; brew upgrade'

    # show/hide Desktop icons
    alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
    alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

elif [[ "$OSTYPE" =~ ^linux ]]
then
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi

