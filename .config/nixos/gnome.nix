{ config, ... }:
{
  # Enable Gnome
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  programs.dconf.profiles.user.databases = [
    {
      lockAll = true;
      settings = {
        "org/gnome/desktop/background" = {
          picture-options = "zoom";
          picture-uri-dark = "file://${config.users.users.timo.home}/.config/nixos/assets/itb.png";
        };

        "org/gnome/desktop/interface" = {
          accent-color = "orange";
          color-scheme = "prefer-dark";
          clock-format = "24h";
          clock-show-weekday = true;
        };

        "org/gnome/settings-daemon/plugins/color" = {
          night-light-enabled = true;
          night-light-schedule-automatic = true;
        };

        "org/gnome/shell" = {
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
