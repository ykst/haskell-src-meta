self: super: extension:
super.haskellPackages.override (old: {
  overrides = if builtins.hasAttr "overrides" old
              then super.lib.composeExtensions old.overrides extension
              else extension;
})
