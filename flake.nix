{
	description = "Alacritty configuration for meDracula as a plugin";
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
	};
	outputs = { self, nixpkgs }:
	let
		system = "x86_64-linux";
		pkgs = import nixpkgs { inherit system; };
	in
	{
		devShells.${system} = {
			alacritty = pkgs.mkShell {
				name = "alacritty";
				packages = [
					pkgs.alacritty
				];
				shellHook = ''echo "Alacrity" | figlet'';
			};
		};
	};
}
