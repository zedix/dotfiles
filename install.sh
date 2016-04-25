#!/usr/bin/env zsh

# Change default shell to zsh
chsh -s $(which zsh)

# Install prezto repository
if [ ! -d ~/.zprezto ]; then
    echo_title_install "\`zprezto\`"
    git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto
fi

# Install dotfiles repository
if [ ! -d ~/dotfiles ]; then
    echo_title_install "\`dotfiles\`"
    git clone https://github.com/zedix/dotfiles.git ~/dotfiles
fi

# Load helpers
source ~/dotfiles/.helpers

# Symlink dotfiles
echo_title_install "\`dotfiles\`"
for file in .{aliases,aliases_local,editorconfig,exports,gitconfig,gitignore,vim,vimrc,zpreztorc,zshrc}; do
    echo_title_update ~/$file
    [ -r ~/dotfiles/$file ] && ln -sf ~/dotfiles/$file ~/$file 2> /dev/null
done
unset file

# Symlink zprezto custom prompt
ln -sf ~/dotfiles/.zprezto/modules/prompt/functions/prompt_zedix_setup ~/.zprezto/modules/prompt/functions/prompt_zedix_setup 2> /dev/null

# Reload
source $HOME/.zshrc
echo_success
