{ config, pkgs, ... }:

{
  # NVIDIA drivers are unfree.
  nixpkgs.config.allowUnfree = true;

  #services.xserver.videoDrivers = [ "nvidia" ];
  services.xserver.videoDrivers = [ "nouveau" ];
  hardware.opengl.enable = true;

  # Optionally, you may need to select the appropriate driver version for your specific GPU.
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;
}
