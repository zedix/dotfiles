#!/usr/bin/env zsh

# Change default shell to zsh
chsh -s $(which zsh)

# Install prezto repository
if [ ! -d ~/.zprezto ]; then
  git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto
fi

# Install dotfiles repository
if [ ! -d ~/dotfiles ]; then
  git clone https://github.com/zedix/dotfiles.git ~/dotfiles
fi

source ~/dotfiles/.helpers
echo_title_update "\`dotfiles\`"

# Symlink dotfiles
ln -sf ~/dotfiles/.aliases ~/.aliases 2> /dev/null
ln -sf ~/dotfiles/.exports ~/.exports 2> /dev/null
ln -sf ~/dotfiles/.vimrc ~/.vimrc 2> /dev/null
ln -sf ~/dotfiles/.vim ~/.vim 2> /dev/null
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig 2> /dev/null
ln -sf ~/dotfiles/.gitignore ~/.gitignore 2> /dev/null
ln -sf ~/dotfiles/.zpreztorc ~/.zpreztorc 2> /dev/null
ln -sf ~/dotfiles/.zshrc ~/.zshrc 2> /dev/null
ln -sf ~/dotfiles/.editorconfig ~/.editorconfig 2> /dev/null

# Reload
source $HOME/.zshrc
echo_success
