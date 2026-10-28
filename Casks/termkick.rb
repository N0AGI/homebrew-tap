cask "termkick" do
  version "10282026.07.24.1"
  sha256 "57c0658f1831beec54842b0935bcdf3ec672f8beb075afe2dac84ed8b089e100"

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
