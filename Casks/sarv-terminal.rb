cask "sarv-terminal" do
  version "1.9.7"
  sha256 "8efb2f869cc3ba06acda2eb888b670a5df491f3f01074c51dc7de5f40fd62a6f"

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
