{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      flake-utils,
      nixpkgs,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs =
            with pkgs;
            [
              /*
                Explanation of the packages:
                - bun: The best node package manager ever?
                - elixir: A functional programming language
                - just: A command runner that allows you to create dependencies between commands
                - mobby-pkg: A package that provides a command line tool for managing remote pairing through git
                - nixfmt-rfc-style: A package that provides a formatter for nix code -> this is the current recommended style
                - ultraman-pkg: A performant procfile runner
                - postgresql: A database
                - git: A version control system
              */
              aider-chat
              elixir
              lexical
              nixfmt-rfc-style
            ]
            ++ pkgs.lib.optionals pkgs.stdenv.isDarwin (
              with pkgs.darwin.apple_sdk.frameworks;
              [
                CoreFoundation
                CoreServices
              ]
            );
          shellHook = ''
            ln -s {{pkgs.lexical/bin/lexical}} .lexical
          '';
        };
      }
    );
}
