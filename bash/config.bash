PS1="\n\u:\w "'$(type __git_ps1 &>/dev/null && __git_ps1 "\033[0;33m%s\033[0m")'"\n→ "
export TERM=xterm-256color

function title {
    echo -en "\033]2;$@\007"
}

