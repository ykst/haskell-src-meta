self: super:
let
  hpExtend = import ../lib/hp-extend.nix self super;
in {
  haskellPackages = hpExtend (hpSelf: _hpSuper: {
    gitlib-libgit2 = hpSelf.callPackage ../pins/gitlib-libgit2.nix { };
  });
}
