{ ... }:
{
  networking.hostName = "zenith";
  networking.networkmanager.enable = true;
  networking.firewall.enable = true;

  services.openssh.enable = false;
}
