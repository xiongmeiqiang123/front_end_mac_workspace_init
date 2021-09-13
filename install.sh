#!/bin/bash

set -e

# 安装homebrew
if ! type brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew -v
else
  echo 'homebrew 已安装';
fi


# 安装nvm
if ! type nvm >/dev/null 2>&1; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
    if [ ! -f "${HOME}/.install_front_init/nvm_conf" ]; then
        touch ~/.profile
        source ~/.profile
        source ~/.bashrc
        touch ${HOME}/.install_front_init/nvm
    fi
    nvm -v
else
  echo 'nvm已安装';
fi

if ! type brew >/dev/null 2>&1; then
    nvm install stable
    node -v
    npm install nrm
    npm install -g yarn
else
  echo 'node 已安装';
fi


# 安装vscode
brew install --cask visual-studio-code

# 安装chrome
brew install --cask google-chrome

# 安装iterm2
brew install --cask iterm2
