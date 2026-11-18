cask "relayrunner" do
  version "0.3.0"
  sha256 "f80cb5ac6ba699fb9a69ef8acb21fa1d16a5f5a401f0d9812ce4641531c1ce64"

  url "https://github.com/relayrunner/relayrunner/releases/download/mac-v#{version}/RelayRunner-#{version}.dmg"
  name "RelayRunner"
  desc "Take GitHub Actions jobs on your Mac from the menu bar"
  homepage "https://relayrunner.app/"

  livecheck do
    url "https://relayrunner.app/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "RelayRunner.app"

  # ~/.relayrunner is shared with the relayrunner CLI, so it stays.
  zap trash: "~/Library/Preferences/app.relayrunner.mac.plist"
end
