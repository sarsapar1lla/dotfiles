{
  config,
  lib,
  pkgs,
  ...
}:
{
  # Enable Gnome
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  services.gnome.games.enable = false;
  environment.gnome.excludePackages = with pkgs; [
    cheese # Camera utility
    file-roller # Archive manager
    geary # Email client
    gnome-connections # Remote desktop tool
    gnome-console
    gnome-contacts
    gnome-text-editor
    gnome-tour
    simple-scan # Document scanner
    yelp # Help tool
  ];

  programs.dconf.profiles.user.databases = [
    {
      lockAll = true;
      settings = {
        "org/gnome/desktop/background" = {
          picture-options = "zoom";
          picture-uri-dark = "file://${config.users.users.timo.home}/.config/nixos/assets/itb.png";
        };

        "org/gnome/desktop/input-sources" = {
          show-all-sources = true;
          sources = with lib.gvariant; [
            (mkTuple [
              "xkb"
              "us"
            ])
          ];
        };

        "org/gnome/desktop/interface" = {
          accent-color = "orange";

          clock-format = "24h";
          clock-show-weekday = true;

          color-scheme = "prefer-dark";

          font-hinting = "full";
          font-antialiasing = "rgba";
        };

        "org/gnome/settings-daemon/plugins/color" = {
          night-light-enabled = true;
          night-light-schedule-automatic = true;
        };

        "org/gnome/shell" = {
          enabled-extensions = [
            pkgs.gnomeExtensions.blur-my-shell.extensionUuid
          ];
          favorite-apps = [
            "org.gnome.Nautilus.desktop"
            "Alacritty.desktop"
            "google-chrome.desktop"
          ];
        };

        "org/gtk/gtk4/Settings/FileChooser" = {
          show-hidden = true;
        };
      };
    }
  ];
}
