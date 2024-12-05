# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(git docker npm zsh-autosuggestions fast-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
alias ll="ls -la"

# Starship terminal
eval "$(starship init zsh)"
# Zoxide
eval "$(zoxide init --cmd cd zsh)"