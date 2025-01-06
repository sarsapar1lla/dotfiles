if command --query pipx
    set -gx PATH $PATH "$HOME/.local/bin"
else
    echo "'pipx' is not installed on path"
end
