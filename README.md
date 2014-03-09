[![Build Status](https://travis-ci.org/foraker/string-calculator-hs.png?branch=jesse)](https://travis-ci.org/foraker/string-calculator-hs)

[This](osherove.com/tdd-kata-1/) kata in Haskell, tested with Hspec.

To get this running locally (on a Mac):

```bash
$ brew install haskell-platform
$ git clone https://github.com/foraker/string-calculator-hs.git
$ cd string-calculator-hs
$ cabal install
$ cabal configure --enable-tests
$ cabal build

# Finally, to run the specs:
$ ./dist/build/spec/spec
```

