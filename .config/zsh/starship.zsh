if command -v starship &> /dev/null; then
  eval "$(starship init zsh)"
else
  echo "'starship' is not installed on path"
fi
