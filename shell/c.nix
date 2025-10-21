let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = with pkgs; [
      autoconf
      automake
      cmake
      make
      valgrind
      clang
      gcc
      gnumake
      libtool
    ];
  }
}
