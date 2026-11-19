cask "sarv-terminal" do
  version "1.12.2"
  sha256 "e954e75518d5da0f032ce9c361bbf1826b4a382d62e78d989e5e5c56e66ee8de"

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
