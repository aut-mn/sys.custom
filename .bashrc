# .bashrc
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

PS1="\[\033[38;37m\]\[\033[1m\]\u\[\033[0m\]@\h\[\033[01;34m\] \w\[ \$(if [ \$? == 0 ]; then echo '\[\033[01;34m\]'; else echo '\[\033[01;31m\]'; fi)\]\$ \[\033[00m\]"
