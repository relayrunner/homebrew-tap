cask "relayrunner" do
  version "0.2.1"
  sha256 "33dd44fb614831cb4d51238975b7ccdce8e19e551dd9eafd922504e3b614033b"

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
