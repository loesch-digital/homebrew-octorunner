cask "octorunner" do
  version "0.5.2"
  sha256 "b6355d80ab95dac230993cc684ddd99b207159b1c8c2a4aacb2d0374a7a9a890"

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
