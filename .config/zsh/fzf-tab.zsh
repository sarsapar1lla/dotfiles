if [ ! -d $HOME/fzf-tab ]; then
  git clone https://github.com/Aloxaf/fzf-tab $HOME/fzf-tab
else
  source $HOME/fzf-tab/fzf-tab.plugin.zsh

  # Disable sort when completing `git checkout`
  zstyle ':completion:*:git-checkout:*' sort false
  # Set descriptions format to enable group support
  zstyle ':completion:*:descriptions' format '[%d]'
  # Disable zsh menu
  zstyle ':completion:*' menu no
  # Enable filename colourising
  zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}


  if command -v eza &> /dev/null; then
    zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
  fi
fi
