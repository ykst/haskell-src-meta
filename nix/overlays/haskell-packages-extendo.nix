self: super:
let
  r = rec {
    # addExtendo : haskellPackages -> extension
    addExtendo = newHp: _: _: {
      extendo = hpExtendo newHp;
    };
    # hpExtendo : haskellPackages -> extension -> haskellPackages
    # performs the extension, and also performs the addExtendo extension afterwards.
    hpExtendo = hp: extension:
      let x = rec {
        newHp =
          hp.override (old: {
            overrides = super.lib.composeExtensions
                          (old.overrides or (_: _: {}))
                          (super.lib.composeExtensions extension (addExtendo newHp));
          });
      }; in x.newHp;
  };
in rec {
  haskellPackages = r.hpExtendo super.haskellPackages (_: _: {});
}
