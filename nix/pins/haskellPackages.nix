{ pkgs ? import <nixpkgs> { }
}:
let
  hp-extend = import ../lib/hp-extend.nix pkgs pkgs;
in hp-extend pkgs.haskell.packages.ghc863 (self: old: {
  # pins
  gitlib-libgit2   = callPackage ./pins/gitlib-libgit2.nix { };
  stackage-curator = callPackage ./pins/stackage-curator.nix { };
  # under development
  haskell-src-meta = callPackage ./haskell-src-meta { };
})
