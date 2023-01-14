{ config, pkgs, ... }:

{
  imports = [
    ./sam-cli.nix
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home = {
    username = "sam";
    homeDirectory = "/home/sam";
    packages = with pkgs; [
      appimage-run
      beekeeper-studio
      bitwarden
      calibre
      firefox-wayland
      protonvpn-gui
      virt-manager
    ];
  };

  programs.vscode = {
    enable = true;
    package = pkgs.vscode.fhsWithPackages (ps: with ps;
      [
        openssl.dev
        pkg-config
        rustup
        zlib
      ]
    );
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
