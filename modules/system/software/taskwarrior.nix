{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    taskwarrior2
    vit
  ];
}
