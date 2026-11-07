cask "octorunner" do
  version "0.3.1"
  sha256 "fce54b5dc98b90c23976a40eeb722e0ec1c6513ffd2084f4b4927153d8c65a64"

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
