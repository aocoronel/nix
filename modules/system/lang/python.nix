{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    imath
    pystring
    python3Full
  ];
}
