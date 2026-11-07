cask "octorunner" do
  version "0.2.0"
  sha256 "c9a8b93131bf6a2181c74a12cabcc99c4273162091f37a7ece0698b9cd69533a"

  url "https://github.com/loesch-digital/octorunner/releases/download/v#{version}/OctoRunner-#{version}-arm64.zip"
  name "OctoRunner"
  desc "Native macOS desktop manager for self-hosted GitHub Actions runners"
  homepage "https://github.com/loesch-digital/octorunner"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "OctoRunner.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/OctoRunner.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/OctoRunner",
    "~/Library/Caches/io.octorunner.macos",
    "~/Library/Logs/OctoRunner",
    "~/Library/Preferences/io.octorunner.macos.plist",
  ]
end
