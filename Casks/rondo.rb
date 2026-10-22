cask "rondo" do
  version "0.1.2"
  sha256 "c436dc9e25d110f117fa22061abcd79c1b6af13568c87df3d330e26775179422"

  url "https://github.com/FarazBukhari/rondo/releases/download/v#{version}/Rondo-#{version}.zip"
  name "Rondo"
  desc "Menu bar file converter with a drag-and-drop radial wheel"
  homepage "https://github.com/FarazBukhari/rondo"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Rondo.app"

  zap trash: [
    "~/Library/Caches/com.farazbukhari.rondo",
    "~/Library/Preferences/com.farazbukhari.rondo.plist",
    "~/Library/Saved Application State/com.farazbukhari.rondo.savedState",
  ]

  caveats <<~EOS
    Rondo is not notarized by Apple, so macOS blocks the first launch.
    Allow it in System Settings → Privacy & Security → Open Anyway, or run:
      xattr -dr com.apple.quarantine #{appdir}/Rondo.app

    Rondo is ad-hoc signed: after each update, re-grant any Accessibility or
    Automation permissions you gave it.

    Optional helpers for video/audio and WebP/AVIF/SVG:
      brew install ffmpeg imagemagick
  EOS
end
