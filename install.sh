#!/bin/bash

DEFAULT_ZSH_REPO="git://github.com/zzzsochi/zsh_config.git"

if [ -z "$ZSH" ]; then
    ZSH="$HOME/.zsh"
fi

if [ -z "$ZSH_REPO" ]; then
    ZSH_REPO="$DEFAULT_ZSH_REPO"
fi


function print_help() {
    echo "zsh_config installation script"
    echo ""
    echo "Basic commands:"
    echo "   install.sh           install configs from git repository"
    echo "   install.sh install   install configs"
    echo "   install.sh help      print this help"
    echo ""
    echo "Environment:"
    echo "   ZSH        path to zsh_config installation"
    echo "                 default: $HOME/.zsh"
    echo "   ZSH_REPO   repository for getting zsh_config"
    echo "                 default: $DEFAULT_ZSH_REPO"
}


if [ -z "$1" ]; then
    rm -rf "$ZSH"
    git clone "$ZSH_REPO" "$ZSH"
    cd "$ZSH"
    chmod +x install.sh
    ./install.sh install
    cd -

elif [ "$1" == "install" ]; then
    ln -sf ~/.zsh/zshrc ~/.zshrc

    if [ ! -f ~/.zprofile ]; then
        cp "$ZSH/zprofile-template" "$HOME/.zprofile"
    fi

elif [ "$1" == "help" ]; then
    print_help

elif [ "$1" == "--help" ]; then
    print_help

else
    echo "$0: illegal command -- \"$@\""
    echo ""
    print_help
    return 1
fi
