#!/bin/bash

install_config() {
    local src_file="$1"
    local dest_file="$2"

    if [ -e "$dest_file" ]; then
        read -p "File $dest_file already exists. Backup, overwrite or skip? [b/o/s]: " choice
        case $choice in
            [Bb]* )
                mv "$dest_file" "${dest_file}.bak"
                echo "Backup of $dest_file created."
                ;;
            [Oo]* )
                echo "Overwriting $dest_file."
                rm "$dest_file"
                ;;
            [Ss]* )
                echo "Skipped $dest_file."
                return
                ;;
            * )
                echo "Invalid response. Skipping $dest_file."
                return
                ;;
        esac
    fi
    ln -s "$src_file" "$dest_file"
    echo "Symbolic link created for $src_file."
}

install_config "$(pwd)/.vimrc" "$HOME/.vimrc"
install_config "$(pwd)/.tmux.conf" "$HOME/.tmux.conf"
