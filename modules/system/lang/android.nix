{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    android-tools
    android-udev-rules
  ];
}
