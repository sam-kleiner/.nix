{ config, pkgs, ... }:

{
  imports = [
    ./neovim.nix
  ];

  environment.systemPackages = with pkgs; [
    autojump
    bat
    btop
    exa
    fd
    fzf
    nano
    ripgrep
    wget
  ];
}
