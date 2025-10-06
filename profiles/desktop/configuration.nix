{userSettings, ...}: {
  imports = [
    ../../modules/core.nix
    # ../../modules/system/bluetooth.nix
    # ../../modules/system/docker.nix
    # ../../modules/system/gamemode.nix
    # ../../modules/system/podman.nix
    # ../../modules/system/power.nix
    # ../../modules/system/printer.nix
    # ../../modules/system/proxy.nix
    # ../../modules/system/security/blocklist.nix
    # ../../modules/system/security/firejail.nix
    # ../../modules/system/security/openvpn.nix
    # ../../modules/system/security/openvpn.nix
    # ../../modules/system/software/rclone.nix
    # ../../modules/system/software/task-champion.nix
    # ../../modules/system/software/unfree/obsidian.nix
    # ../../modules/system/software/unfree/steam.nix
    # ../../modules/system/spell.nix
    ../../modules/system/touchpad.nix
    # ../../modules/system/virtualization.nix
    
    # Programming Languages
    ../../modules/system/lang/android.nix
    ../../modules/system/lang/c.nix
    ../../modules/system/lang/go.nix
    ../../modules/system/lang/nodejs.nix
    ../../modules/system/lang/python.nix
    # ../../modules/system/lang/ruby.nix
    ../../modules/system/lang/rust.nix
     
    # Applications
    ../../modules/system/software/cli.nix
    # ../../modules/system/software/emacs.nix
    ../../modules/system/software/nvim.nix
    # ../../modules/system/software/obsidian.nix
    ../../modules/system/software/email.nix
    ../../modules/system/software/password-manager.nix
    # ../../modules/system/software/syncthing.nix
    ../../modules/system/software/task-management.nix
    # ../../modules/system/software/virt-manager.nix
     
    # Scripts
    # ../../modules/system/scripts/leta-searcher.nix
    (import ../../modules/system/security/sshd.nix { authorizedKeys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAX7m33igDwueGdRAvoxEOTVfB5PJQYEOINBkKc76gXE aocoronel@beelzebub"];
      inherit userSettings;
    })
  ];
}
