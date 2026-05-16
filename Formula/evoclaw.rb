# Formula managed by https://github.com/DevEloLin/evoclaw
# Auto-updated by .github/workflows/tap-update.yml on each stable release.
# To update manually: bump version + sha256 and commit.

class Evoclaw < Formula
  desc "Self-evolving local-first personal AI agent"
  homepage "https://github.com/DevEloLin/evoclaw"
  version "1.0.1-beta.1"
  license "MIT"

  # NOTE: aarch64-apple-darwin tarball is not yet published in releases —
  # only the .dmg (see Casks/evoclaw.rb) is available for v1.0.1-beta.1.
  # The release workflow must emit this tarball before `brew install` works.
  # sha256 stays as the workflow placeholder until that asset exists.
  on_macos do
    on_arm do
      url "https://github.com/DevEloLin/evoclaw/releases/download/v#{version}/evoclaw-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "evoclaw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/evoclaw --version 2>&1")
  end
end
