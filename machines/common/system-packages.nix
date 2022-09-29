{ config, pkgs, ... }:

{
  imports = [ ./neovim.nix ];

  environment.systemPackages = with pkgs; [
    btop
    nano
    wget
  ];
}
