{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = {flake-parts, ...} @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [];

      perSystem = {pkgs, ...}: let
        fonts = with pkgs; [
          roboto
          source-sans
          source-sans-pro
          font-awesome
        ];
      in {
        devShells.default = pkgs.mkShell {
          name = "typst-cv";

          packages = with pkgs; [
            typst
            typstyle
          ];

          env = {
            TYPST_FONT_PATHS = pkgs.lib.concatStringsSep ":" fonts;
          };
        };
      };

      flake = {};

      systems = ["x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin"];
    };
}
