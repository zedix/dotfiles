# Load the shell dotfiles
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && source "$file"
done
unset file

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion