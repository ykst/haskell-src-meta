{ nixpkgs }:
nixpkgs.haskell.packages.lts-133.lib.callStackage2nix
  "haskell-src-meta-project" ./. { inherit nixpkgs; }
