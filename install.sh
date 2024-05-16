#!/bin/bash

# Installs EVERYTHING!
# .bashrc could cause problems in non-fedora distros

if [ -f ".bashrc" ] || [ -f ".vimrc" ]; then
    read -p "Install vimrc & bashrc profiles? [Y/n] " choice
    case "$choice" in
        [Yy]* )
            if [ -f "$HOME/.vimrc" ]; then
                mv "$HOME/.vimrc" "$HOME/.vimrc.bak" && echo "Backed up old .vimrc"
            fi
            if [ -f "$HOME/.bashrc" ]; then
                mv "$HOME/.bashrc" "$HOME/.bashrc.bak" && echo "Backed up old .bashrc"
            fi
            mv ".vimrc" "$HOME" && echo "New .vimrc installed"
            mv ".bashrc" "$HOME" && echo "New .bashrc installed"
            echo "Done"
            ;;
        [Nn]* )
            echo "Aborted"
            ;;
        * )
            echo "Aborted"
            ;;
    esac
else
    echo "Files not found, nothing to install"
fi
