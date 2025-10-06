let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = with pkgs; [
      android-tools
      android-udev-rules
    ];
  }
}
