{ mkDerivation, aeson, amazonka, amazonka-core, amazonka-s3, async
, base, blaze-html, bytestring, Cabal, classy-prelude-conduit
, conduit, conduit-extra, containers, cryptonite
, cryptonite-conduit, data-default-class, directory, exceptions
, fetchgit, filepath, hashable, hpack, hspec, html-conduit
, http-client, http-client-tls, http-conduit, lucid, memory
, mime-types, mono-traversable, mtl, old-locale
, optparse-applicative, optparse-simple, process, QuickCheck
, resourcet, safe, semigroups, stdenv, stm, store
, streaming-commons, syb, tar, temporary, text, time, transformers
, unix-compat, unordered-containers, utf8-string, vector
, xml-conduit, xml-types, yaml, zlib
}:
mkDerivation {
  pname = "stackage-curator";
  version = "0.17.1.0";
  src = fetchgit {
    url = "https://github.com/fpco/stackage-curator";
    sha256 = "10aswjp08bgxj1qbmmvg1x6sdqbl9p82nl2nhqxfhh5nrpv2gxf4";
    rev = "543672f908e1df94b700d00b8ed02c7efdd1e79b";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson amazonka amazonka-core amazonka-s3 async base blaze-html
    bytestring Cabal classy-prelude-conduit conduit conduit-extra
    containers cryptonite cryptonite-conduit data-default-class
    directory exceptions filepath hashable html-conduit http-client
    http-client-tls http-conduit lucid memory mime-types
    mono-traversable mtl old-locale process resourcet safe semigroups
    stm store streaming-commons syb tar temporary text time
    transformers unix-compat unordered-containers utf8-string vector
    xml-conduit xml-types yaml zlib
  ];
  libraryToolDepends = [ hpack ];
  executableHaskellDepends = [
    aeson amazonka amazonka-core amazonka-s3 async base blaze-html
    bytestring Cabal classy-prelude-conduit conduit conduit-extra
    containers cryptonite cryptonite-conduit data-default-class
    directory exceptions filepath hashable html-conduit http-client
    http-client-tls http-conduit lucid memory mime-types
    mono-traversable mtl old-locale optparse-applicative
    optparse-simple process resourcet safe semigroups stm store
    streaming-commons syb tar temporary text time transformers
    unix-compat unordered-containers utf8-string vector xml-conduit
    xml-types yaml zlib
  ];
  testHaskellDepends = [
    aeson amazonka amazonka-core amazonka-s3 async base blaze-html
    bytestring Cabal classy-prelude-conduit conduit conduit-extra
    containers cryptonite cryptonite-conduit data-default-class
    directory exceptions filepath hashable hspec html-conduit
    http-client http-client-tls http-conduit lucid memory mime-types
    mono-traversable mtl old-locale process QuickCheck resourcet safe
    semigroups stm store streaming-commons syb tar temporary text time
    transformers unix-compat unordered-containers utf8-string vector
    xml-conduit xml-types yaml zlib
  ];
  preConfigure = "hpack";
  homepage = "https://github.com/fpco/stackage-curator#readme";
  description = "Tools for curating Stackage bundles";
  license = stdenv.lib.licenses.mit;
}
