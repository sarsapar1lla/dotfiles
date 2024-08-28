if command --query brew
    set -gx HOMEBREW_BUNDLE_FILE "$HOME/.config/brew/main/Brewfile"
    set -gx HOMEBREW_BUNDLE_NO_LOCK 1
else
    echo "'brew' is not installed on path"
end
