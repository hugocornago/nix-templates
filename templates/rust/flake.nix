{
  description = "rust-template";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  inputs.flake-parts.url = "github:hercules-ci/flake-parts";
	inputs.naersk.url = "github:nix-community/naersk";

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;}
    {
      systems = ["x86_64-linux" "x86_64-darwin"];
      perSystem = {pkgs, ...}: 
			let
				naersk = pkgs.callPackage inputs.naersk {};
			in
			{
				defaultPackage = naersk.buildPackage {
					src = ./.;
				};
        devShells.default = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [ rustc cargo rust-analyzer ];
        };
      };
    };
}
