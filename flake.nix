{
description = "Elegant Vagrant";

  inputs = {
    # nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11"
    nixpkgs.url = "nixpkgs/nixos-24.11";
    home-manager.url = "github:nix-community/home-manager/release-24.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }:
    let
      # ----- SYSTEM SETTINGS ----- #
      systemSettings = {
        hostname = "beelzebub";
        timezone = "America/Sao_Paulo";
        locale = "en_US.UTF-8";
        extra_locale = "pt_BR.UTF-8";
        keyboard = "us";
        cups = "false";
      };
      # ----- USER SETTINGS ----- #
      # This user is in wheel group
      userSettings = {
        username = "aocoronel";
        name = "Augusto Coronel";
        email = "aoc@getgoogleoff.me";
        homeDir = "/home/${userSettings.username}";
      };
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages."${system}";
    in {
      nixosConfigurations = {
          aocoronel = lib.nixosSystem {
              system = "${system}";
              modules = [ ./configuration.nix ];
              specialArgs = {
                 inherit username
              };
            };
        };
      homeConfigurations = {
          aocoronel = home-manager.lib.homeManagerConfiguration {
              inherit pkgs;
              modules = [ ./home.nix ];
            };
        };
    };
}
