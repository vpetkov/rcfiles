PATH="$PATH:$HOME/bin"

if echo $my_uname | grep -q "Linux"; then
    PATH="$PATH:$HOME/arm"
elif echo $my_uname | grep -q "Drawin"; then
    PATH="$PATH:/usr/local/Cellar/bash/4.2.28/bin/bash"
fi

export PATH
