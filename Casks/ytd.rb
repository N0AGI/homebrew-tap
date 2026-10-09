cask "ytd" do
  version "10092026.08.46.1"
  sha256 "33ff5425aad2c31fafadad2257977a341181862ccc6e01d1a28d533d9e186b33"

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
