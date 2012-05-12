#!/bin/bash
alias realias='source ~/.bash/aliases.bash'
alias aliases='vi ~/.bash/aliases.bash && realias'

# some more ls aliases
alias ll='ls -lhGF'
alias la='ls -lhGFA'
alias l='ls -1F'

# open vertical vim bufers
alias vi='vim'
alias vim='vim -O'

# update board's clock
alias update_marmaduke_time='ssh root@marmaduke "date -s \"$(date -u)\""'

# rhythmbox
alias music='rhythmbox-client --play-pause'
alias song='rhythmbox-client --print-playing-format \"%tt by %ta from %at (%te/%td)\"'
alias previous='rhythmbox-client --previous'
alias next='rhythmbox-client --next'

# python
alias py='ipython'

# picocom
alias pcom='picocom -b 115200 -l'

# lock screen
alias lock='gnome-screensaver-command --lock'

#adb
alias adb='sudo ~/code/android_tools/adb'

#fastboot
alias fastboot='sudo ~/code/android_tools/fastboot'
alias usbboot='sudo ~/code/android_tools/usbboot ~/code/android_tools/bootloader.bin'

#mutt
alias ti='mutt -F ~/.muttrc.ti'
alias mms='mutt -F ~/.muttrc.mms'

#week number
alias week='date +%W'
alias day='date +%a | tr \"[:upper:]\" \"[:lower:]\"'

#repo sync ReTry
alias repo-sync='time until repo sync; do echo "FAILED: trying again"; done'

#git
alias g='git'
alias gu='git update'
alias gg='git status'
alias glg='git lg'
alias gla='git la'
alias gl='git ls'

