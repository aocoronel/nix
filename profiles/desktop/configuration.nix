{userSettings, ...}: {
  imports = [
    ../../modules/core.nix

    # Window Managers
    ../../modules/system/wm/dwm.nix
    # ../../modules/system/wm/gnome.nix
    # ../../modules/system/wm/hyprland.nix
    # ../../modules/system/wm/i3.nix
    # ../../modules/system/wm/plasma.nix
    # ../../modules/system/wm/qtile.nix

    # ../../modules/system/bluetooth.nix
    # ../../modules/system/docker.nix
    # ../../modules/system/gamemode.nix
    ../../modules/system/podman.nix
    # ../../modules/system/power.nix
    # ../../modules/system/printer.nix
    # ../../modules/system/proxy.nix
    # ../../modules/system/security/blocklist.nix
    # ../../modules/system/security/firejail.nix
    # ../../modules/system/security/openvpn.nix
    # ../../modules/system/security/openvpn.nix
    # ../../modules/system/software/rclone.nix
    # ../../modules/system/software/task-champion.nix
    ../../modules/system/software/unfree/obsidian.nix
    # ../../modules/system/software/unfree/steam.nix
    # ../../modules/system/spell.nix
    # ../../modules/system/touchpad.nix
    # ../../modules/system/virtualization.nix
    (import ../../modules/system/security/sshd.nix {
      authorizedKeys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAX7m33igDwueGdRAvoxEOTVfB5PJQYEOINBkKc76gXE aocoronel@beelzebub"];
      inherit userSettings;
    })
  ];
}
