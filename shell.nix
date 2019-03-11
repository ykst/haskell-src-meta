{ compiler ? null
, pkgs ? import ./nix/pins/pkgs.nix { inherit compiler; }
}:
let
  inherit (pkgs.haskell.lib) addBuildTools;
  inherit (pkgs.haskellPackages) shellFor;
in shellFor {
  packages = p: with p; [
    haskell-src-meta
  ];
  buildInputs = with pkgs; with pkgs.haskellPackages; [
    cabal-install ghcid stylish-haskell shellcheck colordiff
    cabal2nix stackage2nix
  ];
  withHoogle = true;
}
