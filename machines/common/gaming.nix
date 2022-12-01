{ config, pkgs, ... }:

{
  programs.steam.enable = true;
  # boot.extraModprobeConfig = '' options bluetooth disable_ertm=1 '';
  hardware.xone.enable = true;
  # hardware.xpadneo.enable = true;
  # services.hardware.xow.enable = true;
  environment.systemPackages = with pkgs; [
    linuxKernel.packages.linux_zen.xone
  ];
}
