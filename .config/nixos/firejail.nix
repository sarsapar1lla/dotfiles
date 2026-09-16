{ pkgs, ... }:
{
  programs.firejail = {
    enable = true;
    wrappedBinaries = {
      google-chrome = {
        executable = "${pkgs.google-chrome}/bin/google-chrome";
        profile = "${pkgs.firejail}/etc/firejail/google-chrome.profile";
        desktop = "${pkgs.google-chrome}/share/applications/google-chrome.desktop";
      };
    };
  };
}
