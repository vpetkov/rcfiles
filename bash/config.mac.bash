# Bash Completion
if [ -f /usr/local/etc/bash_completion ]; then
    source /usr/local/etc/bash_completion
fi

# MacVim
alias vim=mvim
export GIT_EDITOR="vim -f"

# Make bash check its window size after a process completes
shopt -s checkwinsize

