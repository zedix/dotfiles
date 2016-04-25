#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Load the shell dotfiles
for file in ~/.{exports,aliases,aliases_local,helpers}; do
    [ -r "$file" ] && source "$file"
done
unset file

bindkey "^R" history-incremental-search-backward

# Do not share history between tabs or windows
unsetopt share_history
