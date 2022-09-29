# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usb_storage" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "nixroot/root";
      fsType = "zfs";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/DB4C-C750";
      fsType = "vfat";
    };

  fileSystems."/home" =
    { device = "nixroot/home";
      fsType = "zfs";
    };

  fileSystems."/var/games" =
    { device = "nixroot/var/games";
      fsType = "zfs";
    };

  fileSystems."/var/log" =
    { device = "nixroot/var/log";
      fsType = "zfs";
    };

  fileSystems."/var/lib/lxc" =
    { device = "nixroot/var/lib/lxc";
      fsType = "zfs";
    };

  fileSystems."/var/lib/docker" =
    { device = "nixroot/var/lib/docker";
      fsType = "zfs";
    };

  fileSystems."/var/lib/containers" =
    { device = "nixroot/var/lib/containers";
      fsType = "zfs";
    };

  fileSystems."/var/lib/libvirt" =
    { device = "nixroot/var/lib/libvirt";
      fsType = "zfs";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/c3b51e6a-776d-4359-9f68-0cf32687fbcc"; }
    ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp5s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp6s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp7s0.useDHCP = lib.mkDefault true;

  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  # high-resolution display
  hardware.video.hidpi.enable = lib.mkDefault true;
}
