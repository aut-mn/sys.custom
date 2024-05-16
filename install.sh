#!/bin/bash

# Installs EVERYTHING!
# .bashrc could cause problems in non-fedora distros

if [ -f "$HOME/.bashrc" ] || [ -f "$HOME/.vimrc" ]; then
    read -p "Files .vimrc and .bashrc already exist. Do you want to overwrite them? [Y/n] " choice
    case "$choice" in
        [Yy]* )
            mv "$HOME/.vimrc" "$HOME/.vimrc.bak" && echo "Backed up old .vimrc"
            mv "$HOME/.bashrc" "$HOME/.bashrc.bak" && echo "Backed up old .bashrc"
            mv ".vimrc" "$HOME" && echo "New .vimrc installed"
            mv ".bashrc" "$HOME" && echo "New .bashrc installed"
            echo "Done"
            ;;
        [Nn]* )
            echo "Aborted"
            ;;
        * )
            echo "Invalid choice, aborted."
            ;;
    esac
else
    echo "Files not found. Nothing to install."
fi
