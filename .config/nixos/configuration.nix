{ pkgs, ... }:

{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix

    ./audio.nix
    ./bluetooth.nix
    ./boot.nix
    ./fonts.nix
    ./gnome.nix
    ./locale.nix
    ./network.nix
  ];

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.timo = {
    isNormalUser = true;
    description = "Tim";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.fish;
    packages = with pkgs; [
      alacritty
      bacon
      colima
      docker
      docker-buildx
      docker-compose
      dockerfile-language-server
      dust
      eza
      fzf
      gcc
      gh
      gleam
      google-chrome
      helix
      jq
      mise
      nil
      pipx
      ripgrep
      rustup
      starship
      stow
      uv
      zellij
    ];
  };

  programs.bat.enable = true;
  programs.fish.enable = true;
  programs.git.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    gnomeExtensions.blur-my-shell
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.11"; # Did you read the comment?

}
