{ pkgs, ... }:
{
  programs.firejail = {
    enable = true;
    wrappedBinaries = {
      google-chrome = {
        executable = "${pkgs.google-chrome}/bin/google-chrome";
        desktop = "${pkgs.google-chrome}/share/applications/google-chrome.desktop";
      };
    };
  };
}
