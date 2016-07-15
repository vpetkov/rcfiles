function title {
    echo -en "\033]0;$@\007"
}

function f {
    ack -g $@ | ack $1
}

function a {
  if [ -d "${!#}" ]; then
    arg_length=$(($#-1))
    query=${@:1:$arg_length}
    eval "ack \"${query}\" ${!#}"
  else
    eval "ack \"${@}\" ."
  fi
}

function def {
  a def $@
}

function google {
    QUERY="$@"
    GOOGLE_URL="http://www.google.com/search?q="
    SEARCH_QUERY=$(php -r "echo urlencode(\"$QUERY\");")
    w3m +16 "${GOOGLE_URL}${SEARCH_QUERY}"
}
