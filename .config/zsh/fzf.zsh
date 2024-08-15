if command -v fzf &> /dev/null; then
  source <(fzf --zsh)
else
  echo "'fzf' is not installed on path"
fi
