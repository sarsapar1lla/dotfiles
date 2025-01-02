if command --query brew
    set -gx HOMEBREW_BUNDLE_FILE "$HOME/.config/brew/main/Brewfile"
    set -gx HOMEBREW_BUNDLE_NO_LOCK 1

    set -gx PATH $PATH /usr/local/bin
    set -gx PATH $PATH /usr/local/sbin
else
    echo "'brew' is not installed on path"
end

if command --query brew
    and command --query bat

    set -gx HOMEBREW_BAT 1
    set -gx HOMEBREW_BAT_THEME Catppuccin-mocha
else
    echo "'bat' is not installed on path"
end
