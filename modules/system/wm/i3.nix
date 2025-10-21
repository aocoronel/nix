{
  config,
  pkgs,
  callPackage,
  ...
}: {
  imports = [
    ../display-server/x11.nix
    ../display-server/display-manager.nix
  ];
  environment.pathsToLink = ["/libexec"];
  services.xserver = {
    desktopManager = {
      xterm.enable = false;
    };
    displayManager = {
      defaultSession = "none+i3";
    };
    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        alacritty
        dmenu
        i3blocks
        i3status
      ];
    };
  };
  programs.i3lock.enable = true;
}
