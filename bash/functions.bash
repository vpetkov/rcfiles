function title {
    echo -en "\033]0;$@\007"
}

function fa {
    ack -g $@ | ack $1
}

