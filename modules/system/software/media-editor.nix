{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    gimp
    # shotcut
    # tenacity
    # sox
  ];
}
