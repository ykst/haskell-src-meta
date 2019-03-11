{ compiler ? null }:
let
  pkgs-src = builtins.fetchGit {
    # Descriptive name to make the store path easier to identify
    name = "nixos-unstable-2019-03-10";
    url = https://github.com/nixos/nixpkgs/;
    # Commit hash for nixos-unstable as of 2019-03-10
    # `git ls-remote https://github.com/nixos/nixpkgs-channels nixos-unstable`
    rev = "5d3fd3674a66c5b1ada63e2eace140519849c967";
  };
in import pkgs-src {
  overlays = [
    (import ../overlays/haskell-packages.nix compiler)
    (import ../overlays/packages-under-development.nix)
  ];
}
