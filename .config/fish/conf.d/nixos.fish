if command --query nixos-rebuild
    set -l NIXOS_FLAKE_PATH $(readlink -f "$HOME/.config/nixos/flake.nix" | xargs -- dirname)
    abbr nrb "nixos-rebuild switch --flake '$NIXOS_FLAKE_PATH#zenith' --sudo"
end
