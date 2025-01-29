{
  description = "Mi configuración de Nixos";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    plugin-modes-nvim.url = "github:mvllow/modes.nvim";
    plugin-modes-nvim.flake = false;

    plugin-hlchunk-nvim.url = "github:shellRaining/hlchunk.nvim";
    plugin-hlchunk-nvim.flake = false;

    plugin-workspaces-nvim.url = "github:natecraddock/workspaces.nvim";
    plugin-workspaces-nvim.flake = false;
  };

  outputs = { self, nixpkgs, ... }@inputs: 
  let
    system = "x86_x64-linux";

    pkgs = import nixpkgs {
      inherit system;

      config = {
        allowUnfree = true;
      };
    };
  in
  {
    nixosConfigurations = {
      myNixos = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs system; };

        modules = [
          ./nixos/configuration.nix
          ./config/nvim/nvim.nix
        ];
      };
    };
  };
}
