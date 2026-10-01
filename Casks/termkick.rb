cask "termkick" do
  version "10012026.10.03.1"
  sha256 "0e8411ab1135c607956360b180d9a220ef2d41541df6ff05eb64de356577c3f6"

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
