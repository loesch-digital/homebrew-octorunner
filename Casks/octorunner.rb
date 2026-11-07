cask "octorunner" do
  version "0.2.1"
  sha256 "4b6f8aa064273a539927db5cacf5ba8ec05a7121151588113d1e10babf4110a0"

  url "https://github.com/loesch-digital/octorunner/releases/download/v#{version}/OctoRunner-#{version}-arm64.zip"
  name "OctoRunner"
  desc "Native macOS manager for self-hosted GitHub Actions runners"
  homepage "https://github.com/loesch-digital/octorunner"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "OctoRunner.app"

  zap trash: [
    "~/Library/Application Support/io.octorunner.macos",
    "~/Library/Caches/io.octorunner.macos",
    "~/Library/Preferences/io.octorunner.macos.plist",
  ]
end
