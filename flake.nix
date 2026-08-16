{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    nix-cachyos-kernel.url =
      "github:xddxdd/nix-cachyos-kernel/release";

    home-manager = {
        url = "github:nix-community/home-manager?ref=master";
        inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nix-cachyos-kernel, home-manager, ... }: {
    nixosConfigurations.bot = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [
        ./configuration.nix

        home-manager.nixosModules.home-manager

        ({ pkgs, ... }: {
          nixpkgs.overlays = [
            nix-cachyos-kernel.overlays.pinned
          ];

          boot.kernelPackages =
            pkgs.cachyosKernels.linuxPackages-cachyos-eevdf;

          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;

          home-manager.users.botmanu = import ./home.nix;
        })
      ];
    };
  };
}
