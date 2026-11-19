cask "octorunner" do
  version "0.5.1"
  sha256 "5b3a4fbdcdde338ee9157952b0b193d0d6d974081b2820a871ceb4cb7d5e8c7e"

  url "https://github.com/loesch-digital/octorunner/releases/download/v#{version}/OctoRunner-#{version}-arm64.zip"
  name "OctoRunner"
  desc "Native macOS manager for self-hosted GitHub Actions runners"
  homepage "https://github.com/loesch-digital/octorunner"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "OctoRunner.app"

  uninstall quit: "io.octorunner.macos"

  zap trash: [
    "~/Library/Application Support/io.octorunner.macos",
    "~/Library/Caches/io.octorunner.macos",
    "~/Library/Preferences/io.octorunner.macos.plist",
  ]
end
