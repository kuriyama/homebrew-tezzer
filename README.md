# homebrew-tezzer

Homebrew tap for [tezzer](https://github.com/kuriyama/tezzer).

## Install

```sh
brew tap kuriyama/tezzer
brew install tezzer
```

## Update

When a new tezzer release ships, bump `version`, the two release `url`s, and their
`sha256` values in `Formula/tezzer.rb` to match the new tag's
`tezzer_darwin_amd64.tar.gz` / `tezzer_darwin_arm64.tar.gz` (see `SHA256SUMS`
attached to the GitHub release).
