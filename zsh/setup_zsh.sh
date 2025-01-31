#!/bin/sh
uname_txt=$(uname)

# install necessary packages
case "$uname_txt" in
    Linux*)
        sudo apt install -y curl git
        ;;
    Darwin*)
        brew install curl git
        ;;
    *)
        echo "Unknown OS is detected. Please install zsh manually."
        exit 1
        ;;
esac

# install zsh (excluding macOS)
echo "Installing zsh..."
case "$uname_txt" in
    Linux*)
        sudo apt install -y zsh
        ;;
esac

# set zsh as default shell (excluding macOS)
case "$uname_txt" in
    Linux*)
        chsh -s $(which zsh)
        ;;
esac

chmod +x $(pwd)/install_on_my_zsh.zsh

exec $SHELL -l $(zsh $(pwd)/install_on_my_zsh.zsh)
