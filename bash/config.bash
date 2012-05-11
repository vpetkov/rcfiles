# Cool Prompt
#
# USER@HOST:PATH (GIT_BRANCH)
# →
PS1="\n\u@\h:\w "'$(type __git_ps1 &>/dev/null && __git_ps1 "\033[0;33m%s\033[0m")'"\n→ "

# Git diff shitz
function git_diff() {
    git diff --no-ext-diff -w "$@" | vim -R -
}

# Platform specific configuration
my_uname=$(uname)
if echo $my_uname | grep -q "Linux"; then
    source ~/.bash/config.ubuntu.bash
elif echo $my_uname | grep -q "Drawin"; then
    source ~/.bash/config.mac.bash
fi

