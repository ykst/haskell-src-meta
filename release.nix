{ pkgs ? import ./nix/pins/pkgs.nix { }}:
{
  inherit (pkgs.haskellPackages) haskell-src-meta;
}
