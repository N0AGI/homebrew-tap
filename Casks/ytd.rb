cask "ytd" do
  version "10162026.08.05.1"
  sha256 "e1b2c69a780d8baa705f5c746a24e062e3b5855f1507e9365ac4c2ca4eb8cd97"

  url "https://products.n0agi.com/ytd/ytd-#{version}.zip"
  name "ytd"
  desc "Menu-bar app that syncs a YouTube playlist to a folder (not affiliated with YouTube)"
  homepage "https://products.n0agi.com/ytd/"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "ytd.app"

  # ytd's own data only. Never the user's library folder (videos they chose to keep).
  zap trash: [
    "~/Library/Application Support/ytd",
    "~/Library/Preferences/com.n0agi.ytd.plist",
  ]
end
