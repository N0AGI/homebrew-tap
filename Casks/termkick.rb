cask "termkick" do
  version "09302026.07.47.1"
  sha256 "bcbdbc8f46cd8a643677b87e5cfba2b9455dca214e334590218377ddc17d92c6"

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
