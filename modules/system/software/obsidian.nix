{
  pkgs,
  lib,
  ...
}: {
  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "obsidian"
    ];
  environment.systemPackages = with pkgs; [
    obsidian
  ];
}
