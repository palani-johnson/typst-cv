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
            typstfmt
          ];

          env = {
            TYPST_FONT_PATHS = pkgs.lib.concatStringsSep ":" [
              "${pkgs.roboto}/share/fonts/truetype"
              "${pkgs.source-sans}/share/fonts/truetype"
              "${pkgs.source-sans-pro}/share/fonts/truetype"
              "${pkgs.font-awesome}/share/fonts/opentype"
            ];
          };
        };
      }
    );
}
