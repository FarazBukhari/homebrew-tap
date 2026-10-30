cask "convertsama" do
  version "0.2.0"
  sha256 "d1cb6e741024f28ae73e4bd920215d24fd94af91b59d410056f757c0d37c4cb0"

  url "https://github.com/FarazBukhari/convertsama/releases/download/v#{version}/ConvertSama-#{version}.zip"
  name "ConvertSama"
  desc "Menu bar file converter with a drag-and-drop radial wheel"
  homepage "https://github.com/FarazBukhari/convertsama"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "ConvertSama.app"

  zap trash: [
    "~/Library/Caches/com.farazbukhari.convertsama",
    "~/Library/Caches/com.farazbukhari.rondo",
    "~/Library/Preferences/com.farazbukhari.convertsama.plist",
    "~/Library/Preferences/com.farazbukhari.rondo.plist",
    "~/Library/Saved Application State/com.farazbukhari.convertsama.savedState",
    "~/Library/Saved Application State/com.farazbukhari.rondo.savedState",
  ]

  caveats <<~EOS
    ConvertSama is not notarized by Apple, so macOS blocks the first launch.
    Allow it in System Settings → Privacy & Security → Open Anyway, or run:
      xattr -dr com.apple.quarantine #{appdir}/ConvertSama.app

    ConvertSama is ad-hoc signed: after each update, re-grant any Accessibility or
    Automation permissions you gave it.

    Optional helpers for video/audio and WebP/AVIF/SVG:
      brew install ffmpeg imagemagick
  EOS
end
