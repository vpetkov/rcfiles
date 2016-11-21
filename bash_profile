source ~/.bash/git-completion.bash
source ~/.bash/paths.bash
source ~/.bash/aliases.bash
source ~/.bash/functions.bash
source ~/.bash/prompt.bash
source /usr/local/etc/bash_completion

# use 256 color terminal
TERM=xterm-256color

# enable grep colors
export GREP_OPTIONS="--color=auto"

# bigger history
# http://www.diegor.it/2015/07/13/on-el-capitan-bash-and-history/
HISTSIZE=50000
HISTFILESIZE=$HISTSIZE
SHELL_SESSION_HISTORY=0

# ignore stupid commands
HISTIGNORE="ls*:ll:la:l:cd:gd:gg:gl*:gf:vg"

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace:erasedups

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Add completion for `g` alias for `git`
# This is taken from git-completion with some modification
# complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \
#   || complete -o default -o nospace -F _git g

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Finder Dock Mail Safari iTunes iCal Address\ Book SystemUIServer" killall

# bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# rbenv
eval "$(rbenv init -)"
