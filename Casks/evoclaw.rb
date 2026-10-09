# Cask managed by https://github.com/DevEloLin/evoclaw
# Auto-updated by .github/workflows/tap-update.yml on each stable release.
# To update manually: bump version + sha256 and commit.

cask "evoclaw" do
  version "1.0.1-beta.1"
  sha256 "e17c84bccae8fa79b5855c1a8db8ac188fe8b6a9c3d515758d16d79b4284f43b"

  url "https://github.com/DevEloLin/evoclaw/releases/download/v#{version}/evoclaw-macos-arm64.dmg"
  name "EvoClaw"
  desc "Self-evolving local-first personal AI agent"
  homepage "https://github.com/DevEloLin/evoclaw"

  depends_on hardware: :arm

  binary "evoclaw"

  zap trash: "~/.evoclaw"
end
