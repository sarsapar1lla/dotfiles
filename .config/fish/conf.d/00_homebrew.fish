if test -d /opt/homebrew
    /opt/homebrew/bin/brew shellenv | source
end

if command --query brew
    set -gx HOMEBREW_BUNDLE_FILE "$HOME/.config/brew/main/Brewfile"
    set -gx HOMEBREW_BUNDLE_NO_LOCK 1
    set -gx HOMEBREW_NO_REQUIRE_TAP_TRUST 1

    abbr brewup "brew update && brew bundle install --upgrade --force-cleanup"
end

if command --query brew
    and command --query bat

    set -gx HOMEBREW_BAT 1
end
