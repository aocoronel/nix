{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    isync
    mutt-wizard
    neomutt
    # thunderbird
  ];
}
