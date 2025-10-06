let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = with pkgs; [
      imath
      pystring
      python3Full
    ];
  }
}
