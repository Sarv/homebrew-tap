cask "sarv-terminal" do
  version "1.12.0"
  sha256 "26c96801c892746fa645561695d7888c84b1f176a7f66170f35338f1170c2544"

  url "https://github.com/Sarv/SarvTerminal/releases/download/v#{version}/SarvTerminal-#{version}.dmg",
      verified: "github.com/Sarv/SarvTerminal/"
  name "Sarv Terminal"
  desc "GPU-accelerated terminal with SSH host manager, vaults and encrypted sync"
  homepage "https://github.com/Sarv/SarvTerminal"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app self-updates via Sparkle; Homebrew must not fight it.
  auto_updates true
  depends_on macos: :ventura

  app "Sarv Terminal.app"

  zap trash: [
    "~/Library/Application Support/com.sarv.terminal",
    "~/Library/Caches/com.sarv.terminal",
    "~/Library/HTTPStorages/com.sarv.terminal",
    "~/Library/Preferences/com.sarv.terminal.plist",
    "~/Library/Saved Application State/com.sarv.terminal.savedState",
  ]
end
