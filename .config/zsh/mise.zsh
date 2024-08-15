if command -v mise &> /dev/null; then
  eval "$(mise activate zsh)"
else 
  echo "'mise' is not installed on path"
fi
