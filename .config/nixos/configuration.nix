{ pkgs, ... }:

{
  imports = [
    # Include the results of the hardware scan.
    /etc/nixos/hardware-configuration.nix
    ./audio.nix
    ./gnome.nix
    ./locale.nix
    ./network.nix
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Enable bluetooth
  # hardware = {
  #   enableAllFirmware = true;
  #   bluetooth = {
  #     enable = true;
  #     powerOnBoot = true;
  #     settings = {
  #       General = {
  #         Experimental = true;
  #         FastConnectable = true;
  #       };
  #       Policy = {
  #         AutoEnable = true;
  #       };
  #     };
  #   };
  # };
  # services.blueman.enable = true;

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

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = [
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
    nerd-fonts.caskaydia-mono
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
