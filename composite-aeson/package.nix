{ mkDerivation, aeson, aeson-better-errors, aeson-qq, base
, composite-base, containers, contravariant, generic-deriving
, hashable, hpack, hspec, lens, mmorph, mtl, profunctors
, QuickCheck, scientific, stdenv, tagged, template-haskell, text
, time, unordered-containers, vector, vinyl
}:
mkDerivation {
  pname = "composite-aeson";
  version = "0.7.1.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson aeson-better-errors base composite-base containers
    contravariant generic-deriving hashable lens mmorph mtl profunctors
    scientific tagged template-haskell text time unordered-containers
    vector vinyl
  ];
  libraryToolDepends = [ hpack ];
  testHaskellDepends = [
    aeson aeson-better-errors aeson-qq base composite-base containers
    contravariant generic-deriving hashable hspec lens mmorph mtl
    profunctors QuickCheck scientific tagged template-haskell text time
    unordered-containers vector vinyl
  ];
  prePatch = "hpack";
  homepage = "https://github.com/ConferOpenSource/composite#readme";
  description = "JSON for Vinyl records";
  license = stdenv.lib.licenses.bsd3;
}
