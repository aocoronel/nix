{
  pkgs,
  userSettings,
  ...
}: {
  imports = [
    # Required
    (./. + "../../profiles/" + ("/" + userSettings.profile + "/") + "/hardware-configuration.nix") # User Hardware
    (./. + "/system/wm/" + ("/" + userSettings.wm + "/") + ".nix") # Window Manager
    ./system/boot-loader.nix
    ./system/software/cli.nix
    ./system/disks.nix
    ./system/flatpak.nix
    ./system/fonts.nix
    ./system/hostname.nix
    # ./system/kernel.nix
    ./system/locale.nix
    ./system/networking.nix
    ./system/nextdns.nix
    # ./system/opengl.nix
    ./system/security/automount.nix
    # ./system/security/doas.nix
    ./system/security/firewall.nix
    ./system/security/gpg.nix
    ./system/security/sudo.nix
    # ./system/security/unfree.nix
    ./system/swap.nix
    ./system/systemd.nix
    # ./system/time.nix
  ];

  # Flakes
  nix.settings.experimental-features = ["nix-command" "flakes"];

  users.users.${userSettings.username} = {
    isNormalUser = true;
    description = userSettings.name;
    extraGroups = ["networkmanager" "wheel" "input" "dialout" "video" "render"];
    shell = pkgs.zsh;
    # packages = with pkgs; [
    #   figlet
    # ];
    uid = 1000;
  };

  # WARNING:This doesn't work
  # services.udiskie.enable = true;
  # services.udiskie.tray = "never";

  # WARNING:This doesn't work
  # gtk = {
  #   enable = true;
  #   iconTheme = {
  #     name = userSettings.iconName;
  #     package = userSettings.iconTheme;
  #   };
  #   theme = {
  #     name = userSettings.themeName;
  #     package = userSettings.gtkTheme;
  #   };
  # };

  # WARNING:This doesn't work
  # xdg = {
  #   userDirs = {
  #     enable = true;
  #     createDirectories = true;
  #     music = "${userSettings.homeDir}/media/music";
  #     videos = "${userSettings.homeDir}/media/videos";
  #     pictures = "${userSettings.homeDir}/media/pictures";
  #     templates = "${userSettings.homeDir}/templates";
  #     download = "${userSettings.homeDir}/downloads";
  #     documents = "${userSettings.homeDir}/documents";
  #     desktop = null;
  #     publicShare = null;
  #   };
  # };

  # WARNING:This doesn't work
  # xdg.mimeApps = {
  #   enable = true;
  #   defaultApplications = {
  #     "text/html" = "app.zen_browser.zen.desktop";
  #     "x-scheme-handler/http" = "librewolf.desktop";
  #     "x-scheme-handler/https" = "app.zen_browser.zen.desktop";
  #     "x-scheme-handler/about" = "app.zen_browser.zen.desktop";
  #     "x-scheme-handler/unknown" = "app.zen_browser.zen.desktop";
  #     "inode/directory" = "yazi.desktop";
  #   };
  # };

  environment.shells = with pkgs; [bash zsh];
  users.defaultUserShell = pkgs.bash;
  programs.zsh.enable = true;

  # configuration.nix(5)
  # nixos-help

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?
}
