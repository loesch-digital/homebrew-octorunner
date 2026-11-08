cask "octorunner" do
  version "0.4.1"
  sha256 "be8bcaec16fd6ce9ef956eb219fde3ead51552aea757d42f0561e4556f60d96b"

  url "https://github.com/loesch-digital/octorunner/releases/download/v#{version}/OctoRunner-#{version}-arm64.zip"
  name "OctoRunner"
  desc "Native macOS manager for self-hosted GitHub Actions runners"
  homepage "https://github.com/loesch-digital/octorunner"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "OctoRunner.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/OctoRunner.app"],
                   sudo: false
  end

  uninstall quit: "io.octorunner.macos"

  zap trash: [
    "~/Library/Application Support/io.octorunner.macos",
    "~/Library/Caches/io.octorunner.macos",
    "~/Library/Preferences/io.octorunner.macos.plist",
  ]
end
