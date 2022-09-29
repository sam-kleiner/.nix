{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../common/desktop.nix
      ../common/locale.nix
      ../common/nvidia.nix
      ../common/podman.nix
      ../common/system-packages.nix
      ../common/virt.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.supportedFilesystems = [ "zfs" ];
  boot.zfs.requestEncryptionCredentials = true;

  services.zfs.autoScrub.enable = true;

  networking.hostName = "sam-desktop";
  networking.hostId = "ab5b7d9c";
  networking.networkmanager.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.sam = {
    isNormalUser = true;
    home = "/home/sam";
    description = "Sam";
    initialPassword = "password";
    extraGroups = [ "wheel" "networkmanager" "libvirtd" ];
  };

  users.users.other = {
    isNormalUser = true;
    home = "/home/other";
    description = "Other";
    initialPassword = "password";
  };

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?

  nix = {
    # package = pkgs.nixFlakes;
    extraOptions = "experimental-features = nix-command flakes";
  };
}

