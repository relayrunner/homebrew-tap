cask "relayrunner" do
  version "0.2.0"
  sha256 "3491ae5ab2633a0883e000fcfce36be289b34bb4ab1d493218bb5a2f2679e0cb"

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
