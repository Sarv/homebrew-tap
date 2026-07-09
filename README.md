# Sarv Homebrew Tap

Homebrew casks for [Sarv](https://github.com/Sarv) apps.

## Install

```sh
brew install --cask sarv/tap/sarv-terminal
```

`brew` auto-taps on first use. To tap explicitly:

```sh
brew tap sarv/tap
brew install --cask sarv-terminal
```

## Update / uninstall

```sh
brew upgrade --cask sarv-terminal   # Sarv Terminal also self-updates via Sparkle
brew uninstall --cask sarv-terminal
brew uninstall --zap --cask sarv-terminal   # also remove app data
```

## Maintainers

The `sarv-terminal` cask's `version` + `sha256` are bumped automatically by
`scripts/release.sh` in the [SarvTerminal](https://github.com/Sarv/SarvTerminal)
repo after each notarized DMG is published. It expects a local clone of this
tap at `../homebrew-tap` (override with `HOMEBREW_TAP_DIR`).
