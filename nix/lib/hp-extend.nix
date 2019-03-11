hp: lib: extension:
hp.override (old: {
  overrides = if builtins.hasAttr "overrides" old
              then lib.composeExtensions old.overrides extension
              else extension;
})
