for target in composite-{aeson{,-refined},base,ekg,opaleye,reflex,swagger}; do
  ( cd $target && hpack --force && cabal2nix . > package.nix )
done
