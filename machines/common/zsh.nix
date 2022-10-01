{ config, pkgs, ... }:

{
  imports = [
    ./fonts.nix
  ];

  users.defaultUserShell = pkgs.zsh;

  programs.zsh = {
    enable = true;
    histSize = 20000;
    enableCompletion = true;
    autosuggestions.enable = true;
    enableBashCompletion = true;
  };
}
