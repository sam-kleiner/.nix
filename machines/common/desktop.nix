{ config, pkgs, ... }:

{
  # Enable the GNOME Desktop Environment.
  # programs.xwayland.enable = true;
  services.xserver = {
    enable = true;
    displayManager = {
      # lightdm = {
      #   enable = true;
      #   # extraConfig = "autologin-guest=false\nautologin-user=sam\nautologin-user-timeout=0";
      # };
      gdm = {
        enable = true;
        wayland = true;
      };
      # autoLogin = {
      #  enable = true;
      #  user = "sam";
      # };
    };
    desktopManager.gnome.enable = true;
  };

  # Enable dconf
  programs.dconf.enable = true;

  # Configure keymap in X11
  # services.xserver.layout = "us";
  # services.xserver.xkbOptions = {
  #   "eurosign:e";
  #   "caps:escape" # map caps to escape.
  # };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    jack.enable = true;
  };
  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  environment.systemPackages = with pkgs; [
    gnome.gnome-tweaks
    gnomeExtensions.caffeine
    gnomeExtensions.dash-to-dock
    gnomeExtensions.gnome-clipboard
    gnomeExtensions.no-overview
    gnomeExtensions.screenshot-tool
    gnomeExtensions.workspaces-bar
  ];
}

