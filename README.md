# FarazBukhari/homebrew-tap

Homebrew casks for [Rondo](https://github.com/FarazBukhari/rondo), a menu-bar file converter for macOS.

```bash
brew install --cask farazbukhari/tap/rondo
```

Rondo is ad-hoc signed and not notarized, so macOS blocks the first launch. Allow it in **System Settings → Privacy & Security → Open Anyway**, or run:

```bash
xattr -dr com.apple.quarantine /Applications/Rondo.app
```

Optional helpers for video/audio and WebP/AVIF/SVG: `brew install ffmpeg imagemagick`.

The cask is bumped automatically when a new Rondo release is published.
