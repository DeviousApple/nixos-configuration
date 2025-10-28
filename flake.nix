{
  description = "ASUS NixOS Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { self, nixpkgs }: {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
          ./hosts/lapbrew/configuration.nix
          ../linux-g14/default.nix #importing Custom ASUS Linux Kernel, delete or comment for general install
          ./hosts/lapbrew/supergfxd.nix #importing ASUS Notebook service, delete or comment for general install
          ];
      };
  };
}
