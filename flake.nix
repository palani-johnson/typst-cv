{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    systems.url = "github:nix-systems/default";
    flake-utils = {
      url = "github:numtide/flake-utils";
      inputs.systems.follows = "systems";
    };
  };

  outputs = {
    nixpkgs,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {inherit system;};
      in {
        devShells.default = pkgs.mkShell {
          name = "typst-cv";

          packages = with pkgs; [
            typst
            typstyle
          ];

          env = {
            TYPST_FONT_PATHS = pkgs.lib.concatStringsSep ":" (with pkgs; [
              roboto
              source-sans
              source-sans-pro
              font-awesome
            ]);
          };
        };
      }
    );
}
