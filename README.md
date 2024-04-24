# Zedix’s dotfiles

Repository of config files for programs I use everyday.

## Install

```sh
zsh -c "`curl -fsSL https://raw.githubusercontent.com/zedix/dotfiles/master/install.sh`"
git config --global user.email user@domain.com
```

## Updating

Run `zprezto-update` to automatically check if there is an update to Prezto.

```sh
cd
zprezto-update
```

## Prompt `powerlevel10k`

```sh
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
p10k configure
vim ~/.p10k.zsh
```

Warp Issues:
- https://github.com/warpdotdev/Warp/issues/2155
