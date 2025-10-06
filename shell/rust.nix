let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = with pkgs; [
      pkgs.rustc
      pkgs.rustup
    ];
  }
