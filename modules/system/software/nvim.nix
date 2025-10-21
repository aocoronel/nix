{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # neovide
    alejandra
    bash-language-server
    # clang-tools
    # docker-compose-language-service
    # dockerfile-language-server-nodejs
    harper
    # java-language-server
    # kotlin-language-server
    lua-language-server
    markdown-oxide
    marksman
    shfmt
    # sqls
    # typescript-language-server
    # yaml-language-server
  ];

  programs.neovim = {
    enable = true;
  };
}
