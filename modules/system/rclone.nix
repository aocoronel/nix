{ pkgs, ... }:

{
  fileSystems."/mnt/rclone" = {
    device = "Filen:";
    fsType = "rclone";
    options = [
      "nodev"
      "nofail"
      "allow_other"
      "args2env"
      "config=/home/aocoronel/.config/rclone/rclone.conf"
    ];
  };
}
