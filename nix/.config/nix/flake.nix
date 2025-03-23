{
  description = "Example nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nix-homebrew.url = "github:zhaofengli/nix-homebrew";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nix-homebrew }: {
    darwinConfigurations = {
      mac-mini = nix-darwin.lib.darwinSystem {
        modules = [
          ./config/common.nix
          ./config/mac-mini.nix
          nix-homebrew.darwinModules.nix-homebrew
        ];
      };
      macbook-pro = nix-darwin.lib.darwinSystem {
        modules = [
          ./config/common.nix
          ./config/macbook-pro.nix
          nix-homebrew.darwinModules.nix-homebrew
        ];
      };
    };
  };
}
