{ config, pkgs, ... }:

{
  imports = [ ./neovim.nix ];

  environment.systemPackages = with pkgs; [
    autojump
    btop
    nano
    ripgrep
    wget
  ];
}
