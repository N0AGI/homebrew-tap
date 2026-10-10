cask "termkick" do
  version "10102026.05.25.1"
  sha256 "9a16d2f772dc8f5af111ed2d9c65c4b852934fbeb8c287ac7ff917327a5b6615"

  url "https://products.n0agi.com/termkick/termkick-#{version}.zip"
  name "termkick"
  desc "SSH client and local terminal with tabs, split panes and snippets"
  homepage "https://products.n0agi.com/termkick/"

  depends_on macos: :tahoe

  app "termkick.app"

  # termkick's own data only. Never ~/.ssh: termkick_config and termkick-backups
  # live there and belong to the user's SSH setup.
  zap trash: [
    "~/Library/Application Support/termkick",
    "~/Library/Preferences/com.n0agi.termkick.plist",
    "~/Library/Saved Application State/com.n0agi.termkick.savedState",
  ]
end
