{ config, pkgs, ... }:

{
  imports = [
    ./neovim.nix
  ];

  environment.systemPackages = with pkgs; [
    autojump
    bat
    btop
    duf
    exa
    fd
    fzf
    jq
    most
    nano
    ncdu_2
    procs
    ripgrep
    tldr
    wget
  ];
}
