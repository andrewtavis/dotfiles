# Base
autoload -U compinit
compinit
_comp_options+=(globdots) # with hidden files

# Plugins
if [[ $(uname) == "Darwin" ]]; then
    source /Users/$USER/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    source /Users/$USER/.zsh/zsh-autosuggetions/zsh-autosuggestions.zsh
else
    source /home/$USER/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    source /home/$USER/.zsh/zsh-autosuggetions/zsh-autosuggestions.zsh
fi

# Custom bindings
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

if [[ $(uname) == "Darwin" ]]; then
    bindkey "^[[A" history-beginning-search-backward
    bindkey "^[[B" history-beginning-search-forward
else
    bindkey "^[OA" history-beginning-search-backward
    bindkey "^[OB" history-beginning-search-forward
fi