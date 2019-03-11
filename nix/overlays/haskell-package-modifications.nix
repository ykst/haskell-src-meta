self: super:
let
  hpExtend = import ../lib/hp-extend.nix super.haskellPackages super.lib;
in {
  haskellPackages = hpExtend (hpSelf: _hpSuper: {
    gitlib-libgit2 = hpSelf.callPackage ../pins/gitlib-libgit2.nix { };
    stackage-curator = hpSelf.callPackage ../pins/stackage-curator.nix { };
  });
}
