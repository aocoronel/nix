{ config, pkgs, ... }:

let
  myProgram = import ./pkgs/my-program/default.nix { inherit pkgs; };
in
{
  environment.systemPackages = with pkgs; [
    myProgram
  ];
}
