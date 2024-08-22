# First source our environment
source $HOME/.config/zsh/environment.zsh

typeset -a sources

# Add personal components
sources+="$ZSH_CONFIG/completions.zsh"
sources+="$ZSH_CONFIG/aliases.zsh"
sources+="$ZSH_CONFIG/mise.zsh"
sources+="$ZSH_CONFIG/starship.zsh"
sources+="$ZSH_CONFIG/fzf.zsh"
sources+="$ZSH_CONFIG/fzf-tab.zsh"

# Add local
sources+=~/.local/.zshrc

# Syntax highlighting - must be sourced last
sources+="$ZSH_CONFIG/syntax-highlighting.zsh"

# Attempt to source each file
foreach file (`echo $sources`)
    if [[ -a $file ]]; then
        source $file
    fi
end
