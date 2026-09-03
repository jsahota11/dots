source ~/.antidote/antidote.zsh
antidote load

eval "$(zoxide init zsh)"

source ~/.aliases.zsh

export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export LANG="en_US.UTF-8"
export EDITOR="nvim"

PROMPT='%n@%m %~ %# '
