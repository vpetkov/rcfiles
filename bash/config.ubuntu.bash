# TERM with color
# I need this for mutt
export TERM=xterm-256color

# Set title easily
function title {
    echo -en "\033]2;$@\007"
}

