! /usr/bin/env zsh

if [ ! -d ~/dotfiles ]; then

    # Use zsh
    chsh -s $(which zsh)

    # Install prezto & dotfiles
    git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto
    git clone https://github.com/zedix/dotfiles.git ~/dotfiles

    source ~/dotfiles/.helpers
    echo_title_update "\`dotfiles\`"

    # Symlink dotfiles
    ln -s ~/dotfiles/.aliases ~/.aliases 2> /dev/null
    ln -s ~/dotfiles/.vimrc ~/.vimrc 2> /dev/null
    ln -s ~/dotfiles/.vim ~/.vim 2> /dev/null
    ln -s ~/dotfiles/.gitconfig ~/.gitconfig 2> /dev/null
    ln -s ~/dotfiles/.gitignore ~/.gitignore 2> /dev/null
    ln -s ~/dotfiles/.zpreztorc ~/.zpreztorc 2> /dev/null
    ln -s ~/dotfiles/.zshrc ~/.zshrc 2> /dev/null
    ln -s ~/dotfiles/.editorconfig ~/.editorconfig 2> /dev/null

    # Reload
    source $HOME/.zshrc
    echo_success

else
    echo "Dotfiles are already installed"
fi
