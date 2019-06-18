# haskell-fractalmachine

Library to generate fractals using the Hutchinson Fractal Machine theorem.

# Installation

Assuming you have GHC and cabal installed, install Gtk2hs by following the instructions here: https://wiki.haskell.org/Gtk2Hs/Installation.

Then run
```
cabal update
cabal install chart-cairo
```
which installs the required haskell-chart library (https://github.com/timbod7/haskell-chart/wiki).

# Running examples

Running the examples from the project home directory is quite straightforward. For example, to run the example that generates the Barnsley fern, simply run
```
runhaskell -ilib examples/barnsleyfern.hs
```
from the project home directory.

The examples are written such that it's straightforward to customize and expand them; the underlying machinery can take any number of functions as inputs and a starting set of any (finite) size (for now), and the only limit on the number of iterations is determined by your patience.
