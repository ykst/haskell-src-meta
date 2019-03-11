self: super:
let
  hp = super.haskellPackages;
  hpExtend = import ../lib/hp-extend.nix hp super.lib;
in {
  haskellPackages = hpExtend (hpSelf: _hpSuper: {
    haskell-src-meta = hpSelf.callPackage ../../haskell-src-meta { };
  });
}
