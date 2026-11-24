cask "relayrunner" do
  version "0.7.0"
  sha256 "f3db9e6908ccc495e7150f1d3710cdd992ae6f6f873d79da410ac7cb9bff87fc"

  url "https://github.com/relayrunner/relayrunner/releases/download/mac-v#{version}/RelayRunner-#{version}.dmg"
  name "RelayRunner"
  desc "Take GitHub Actions jobs on your Mac from the menu bar"
  homepage "https://relayrunner.dev/"

  livecheck do
    url "https://relayrunner.dev/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "RelayRunner.app"

  # ~/.relayrunner is shared with the relayrunner CLI, so it stays.
  zap trash: "~/Library/Preferences/app.relayrunner.mac.plist"
end
