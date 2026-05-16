# Cask managed by https://github.com/DevEloLin/evoclaw
# Auto-updated by .github/workflows/tap-update.yml on each stable release.
# To update manually: bump version + sha256 and commit.

cask "evoclaw" do
  version "1.0.1-beta.1"
  sha256 "763dafed65a8f919f224e8a5d181040c535406c9ebee823c0946567b5ffa17e8"

  url "https://github.com/DevEloLin/evoclaw/releases/download/v#{version}/evoclaw-macos-arm64.dmg"
  name "EvoClaw"
  desc "Self-evolving local-first personal AI agent"
  homepage "https://github.com/DevEloLin/evoclaw"

  depends_on hardware: :arm

  binary "evoclaw"

  zap trash: "~/.evoclaw"
end
