{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # librewolf
    # ungoogled-chromium
    # lynx
    # floorp
    # firefox
    # ddgr
    # brave
    # nyxt
    qutebrowser
    # vivaldi
    # w3m
  ];
}
