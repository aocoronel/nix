{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    (pkgs.pass.withExtensions (exts: [
      pkgs.passExtensions.pass-otp
      pkgs.passExtensions.pass-tomb
    ]))
    lesspass-cli
    steghide
    tomb
    zbar
    # gocryptfs
  ];
}
