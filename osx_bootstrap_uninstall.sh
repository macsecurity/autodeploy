#!/bin/bash
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

###################################
# BREW uninstall script for osx_bootstrap.sh script
###################################

SUDO_USER=$(whoami)

brew uninstall coreutils
brew uninstall gnu-sed
brew uninstall gnu-tar
brew uninstall gnu-indent
brew uninstall gnu-which

echo "uninstall gnu tools"
brew uninstall findutils

echo "uninstall java"
# https://github.com/AdoptOpenJDK/homebrew-openjdk
brew uninstall --cask adoptopenjdk
brew uninstall --cask adoptopenjdk8
brew uninstall --cask adoptopenjdk11
brew uninstall --cask adoptopenjdk14
brew uninstall --cask adoptopenjdk15

PACKAGES=(
    alfred
    asciinema
    atom
    bash
    ack
    autoconf
    automake
    autojump
    aws-iam-authenticator
    boot2docker
    ffmpeg
    fx
    gettext
    gifsicle
    git
    graphviz
    gradle
    golang
    gnupg
    hub
    httpie
    kotlin
    kubernetes-cli
    kubernetes-helm
    maven
    imagemagick
    jq
    jpegoptim
    libjpeg
    libmemcached
    lynx
    markdown
    memcached
    mercurial
    minikube
    netron
    npm
    nvm
    node
    optipng
    pkg-config
    postgresql
    python
    python3
    pypy
    rabbitmq
    ripgrep
    rename
    ssh-copy-id
    tig
    terminal-notifier
    tesseract
    the_silver_searcher
    tmux
    tree
    yamllint
    vim
    watch
    wget
)

echo "Installing packages..."
brew uninstall ${PACKAGES[@]}

CASKS=(
    atom
    android-studio
    chromium
    docker
    firefox
    gimp
    google-chrome
    intellij-idea-ce
    keepingyouawake
    miro
    protopie
    rectangle
    slack
    thunderbird
    vagrant
    virtualbox
    visual-studio-code
    vlc
    zoom
)

echo "Installing cask apps..."
sudo -u $SUDO_USER brew uninstall --cask ${CASKS[@]}

echo "Cleaning up..."
brew cleanup

echo "brew update"
brew update
echo "brew upgrade"
brew upgrade
echo "brew doctor"
brew doctor