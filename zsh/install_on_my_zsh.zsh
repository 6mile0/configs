#!/usr/bin/env zsh

# check if zsh is installed
if [ -z "$(command -v zsh)" ]; then
  echo "zsh is not installed. Please install zsh first."
  exit 1
fi

# install oh-my-zsh
echo "Installing oh-my-zsh..."
if [ -d "$HOME/.oh-my-zsh" ]; then
  rm -rf $HOME/.oh-my-zsh
fi

if [ -f "$HOME/.zshrc" ]; then
  rm $HOME/.zshrc
fi

if [ -f "$HOME/.p10k.zsh" ]; then
  rm $HOME/.p10k.zsh
fi

if [ -f "$HOME/.zshenv" ]; then
  rm $HOME/.zshenv
fi

zsh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
