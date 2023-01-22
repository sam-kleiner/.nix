{ config, pkgs, ... }:

{
  imports = [
    ./common/zsh.nix
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home = {
    username = "sam";
    homeDirectory = "/home/sam";
    packages = with pkgs; [
      bitwarden-cli
      cargo
      direnv
      gcc
      k9s
      kubectl
      podman-compose
      podman-tui
      python3Full
      rustc
    ];
  };

  programs = {
    git = {
      enable = true;
      delta.enable = true;
      includes = [
        { path = "~/.nix/users/common/zsh/.gitconfig"; }
      ];
    };

    gitui.enable = true;
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";
}
