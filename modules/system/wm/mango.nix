{
  pkgs,
  userSettings,
  ...
}: {
  imports = [
    ../display-server/wayland.nix
    ../display-server/display-manager.nix
  ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  environment.systemPackages = with pkgs; [
    alacritty
    cpio
    dunst
    gsettings-desktop-schemas
    libva-utils
    lm_sensors
    meson
    pavucontrol
    pinentry-gnome3
    playerctl
    waybar
    wl-clipboard
    wl-clipboard-x11
    wlr-randr
    xdg-desktop-portal-wlr
    hypridle
    hyprlock
    hyprpicker
    cliphist
    fuzzel
    grim
    rofi-wayland
    slurp
    swayimg
    swww
    wf-recorder
    wttrbar
    ydotool
  ];
}
