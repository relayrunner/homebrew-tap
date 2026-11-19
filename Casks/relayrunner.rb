cask "relayrunner" do
  version "0.6.0"
  sha256 "0a931c750b6527cdeb21c632e1258f6a8337a23caeab09b66f4443a55f89661c"

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
