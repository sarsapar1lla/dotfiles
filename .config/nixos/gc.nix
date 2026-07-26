{ ... }:

{
  # Automatically remove unused links from store
  nix.gc.automatic = true;

  # Automatically remove duplicate links from store
  nix.settings.auto-optimise-store = true;
}
