PS1="\n\u:\w "'$(type __git_ps1 &>/dev/null && __git_ps1 "\033[0;33m%s\033[0m")'"\n→ "
export TERM=xterm-256color

function title {
    echo -en "\033]2;$@\007"
}

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

if [[ "$OSTYPE" =~ ^darwin ]]
then
    # Add tab completion for `defaults read|write NSGlobalDomain`
    # You could just use `-g` instead, but I like being explicit
    complete -W "NSGlobalDomain" defaults

    # Add `killall` tab completion for common apps
    complete -o "nospace" -W "Finder Dock Mail Safari iTunes iCal Address\ Book SystemUIServer" killall
fi

