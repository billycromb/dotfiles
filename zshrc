bindkey -v
# Fix backspace
bindkey "^?" backward-delete-char

bindkey '^[[A' history-beginning-search-backward
bindkey '^[OA' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward
bindkey '^[OB' history-beginning-search-forward

# On some containters vi is aliased to neovim,
# this makes sure it is vim
alias vi=vim
