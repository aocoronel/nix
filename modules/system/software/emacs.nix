{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    emacs
    emacs-lsp-booster
    ffmpegthumbnailer
    graphviz
    mediainfo
    poppler_utils
    vips
  ];
}
