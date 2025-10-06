let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = with pkgs; [
      autoconf
      automake
      # cmake
      gcc
      gnumake
      libtool
    ];
  }
}
