# First source our environment
source $HOME/.config/zsh/environment.zsh

typeset -a sources

# Add personal components
sources+="$ZSH_CONFIG/aliases.zsh"
sources+="$ZSH_CONFIG/mise.zsh"
sources+="$ZSH_CONFIG/starship.zsh"

# Add fzf
sources+=~/.fzf.zsh

# Add local
sources+=~/.local/.zshrc

# Attempt to source each file
foreach file (`echo $sources`)
    if [[ -a $file ]]; then
        source $file
    fi
end
