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
    jq
    most
    nano
    ripgrep
    tldr
    wget
  ];
}
