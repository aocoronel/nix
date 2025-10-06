{
  pkgs,
  ...
}: let
    leta-searcher.url = "github:aocoronel/search-sh";
in
{
  environment.systemPackages = with pkgs; [
    leta-searcher.packages.${pkgs.system}.default
  ];
}
