{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    flameshot
    freetube
    mpv
    newsboat
    # obs-studio
    # vlc
  ];
}
