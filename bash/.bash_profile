# Always source .bashrc for login shells
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

. "$HOME/.local/bin/env"
