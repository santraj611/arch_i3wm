# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nv='nvim'
alias xrandrmode='xrandr --output VGA1 --mode'

# PS1='[\u@\h \W]\$ '
PS1='\W >: '
# PS1='\W >_ '

# Adding path
export PATH="$PATH:/home/santraj/.local/bin"

# starship 
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init bash)"
