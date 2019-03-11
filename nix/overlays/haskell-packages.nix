compilerMay: self: super:
let
  compiler = if builtins.isNull compilerMay then "ghc863" else compilerMay;
  hp = super.haskell.packages.${compiler};
  hpExtend = import ../lib/hp-extend.nix hp super.lib;
in {
  haskellPackages = hpExtend (hpSelf: _hpSuper: {
    cabal2nix = hpSelf.callPackage ../pins/cabal2nix.nix { };
    distribution-nixpkgs = hpSelf.callPackage ../pins/distribution-nixpkgs.nix { };
    gitlib-libgit2 = hpSelf.callPackage ../pins/gitlib-libgit2.nix { };
    stackage-curator = hpSelf.callPackage ../pins/stackage-curator.nix { };
  });
}
