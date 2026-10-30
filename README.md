# FarazBukhari/homebrew-tap

Homebrew casks for [ConvertSama](https://github.com/FarazBukhari/convertsama), a menu-bar file converter for macOS.

```bash
brew install --cask farazbukhari/tap/convertsama
```

ConvertSama is ad-hoc signed and not notarized, so macOS blocks the first launch. Allow it in **System Settings → Privacy & Security → Open Anyway**, or run:

```bash
xattr -dr com.apple.quarantine /Applications/ConvertSama.app
```

Optional helpers for video/audio and WebP/AVIF/SVG: `brew install ffmpeg imagemagick`.

The cask is bumped automatically when a new ConvertSama release is published.

ConvertSama was called Rondo up to 0.1.2. If you installed `rondo`, run `brew upgrade --cask farazbukhari/tap/convertsama` once: Homebrew trusts third-party casks by name, so a plain `brew upgrade` skips the renamed cask.
