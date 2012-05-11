#!/bin/bash
alias realias="source ~/.bash/aliases"

# some more ls aliases
alias ll='ls -lhGF'
alias la='ls -lhGFA'
alias l='ls -1F'

# open vertical vim bufers
alias vi=vim
alias vim='vim -O'

# update board's clock
alias update_marmaduke_time='ssh root@marmaduke "date -s \"$(date -u)\""'

# rhythmbox
alias music="rhythmbox-client --play-pause"
alias song="rhythmbox-client --print-playing-format \"%tt by %ta from %at (%te/%td)\""
alias previous="rhythmbox-client --previous"
alias next="rhythmbox-client --next"

# python
alias py="python -ic \"import readline, rlcompleter; readline.parse_and_bind('tab: complete'); del readline, rlcompleter\""

# picocom
alias pcom="picocom -b 115200 -l"

# lock screen
alias lock="gnome-screensaver-command --lock"

#adb
alias adb="sudo ~/code/android_tools/adb"

#fastboot
alias fastboot="sudo ~/code/android_tools/fastboot"
alias usbboot="sudo ~/code/android_tools/usbboot ~/code/android_tools/bootloader.bin"

#mutt
alias ti="mutt -F ~/.muttrc.ti"
alias mms="mutt -F ~/.muttrc.mms"

#week number
alias week="date +%W"
alias day="date +%a | tr \"[:upper:]\" \"[:lower:]\""

#repo sync ReTry
alias repo-sync='time until repo sync; do echo "FAILED: trying again"; done'

#git
alias g="git"
alias gg="git status"
alias gl='git log --oneline --decorate -12'
alias glg='git log --oneline --decorate --graph'

