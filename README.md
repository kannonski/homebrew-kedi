# homebrew-kedi

Homebrew tap for [**kedi**](https://github.com/kannonski/warden) — the governed terminal (a native Tauri app for macOS & Linux).

## Install

```sh
brew tap kannonski/kedi
brew install --cask --no-quarantine kedi
```

`--no-quarantine` is needed because kedi isn't yet code-signed/notarized (no paid Apple Developer account). Without it, macOS Gatekeeper blocks the first launch — you'd have to right-click the app → **Open** once instead.

## Upgrade

```sh
brew upgrade --cask kedi
```

## Uninstall

```sh
brew uninstall --cask kedi          # add --zap to also remove app data
```

## Linux

The cask is macOS-only. On Linux, grab the `.AppImage`, `.deb`, or `.rpm` from the [releases page](https://github.com/kannonski/warden/releases).
