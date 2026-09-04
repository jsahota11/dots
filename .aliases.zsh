## PERSONAL

# Meta
alias eaf='nvim ~/.aliases.zsh'

# Config files
alias zshcf="nvim ~/.zshrc"
alias tmuxcf="nvim ~/.tmux.conf"

# Not enough for a category
alias ssha="ssh sahotaj2@aviary.cs.umanitoba.ca"
alias initlua="nvim ~/.config/nvim/init.lua"

# Directory
alias ...='z ../..'
alias ....='z ../../..'
alias .....='z ../../../..'
alias /='z /'
alias ~='z ~'

alias md='mkdir -p'
alias rd='rmdir -p'

alias l='ls -aG'
alias ll='ls -alG'

## not aliases but close enough

mdz(){
    if [ $1 != "" ]
    then
        md $1
        z $1
    else
        echo 'mdz: no directory specified'
    fi
}
