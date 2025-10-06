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
    # ../../modules/system/software/task-champion.nix
    # ../../modules/system/software/unfree/steam.nix
    # ../../modules/system/spell.nix
    ../../modules/system/touchpad.nix
    # ../../modules/system/virtualization.nix

    # Applications
    ../../modules/system/software/cli.nix
    # ../../modules/system/software/emacs.nix
    ../../modules/system/software/nvim.nix
    ../../modules/system/software/email.nix
    ../../modules/system/software/password-manager.nix
    ../../modules/system/software/taskwarrior.nix
    # ../../modules/system/software/virt-manager.nix

    # Scripts
    # ../../modules/system/scripts/leta-searcher.nix
    (import ../../modules/system/security/sshd.nix { authorizedKeys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAX7m33igDwueGdRAvoxEOTVfB5PJQYEOINBkKc76gXE aocoronel@beelzebub"];
      inherit userSettings;
    })
  ];
}
