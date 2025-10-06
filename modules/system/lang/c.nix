{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    autoconf
    automake
    # cmake
    gcc
    gnumake
    libtool
  ];
}
