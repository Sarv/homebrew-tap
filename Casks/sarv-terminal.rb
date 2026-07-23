cask "sarv-terminal" do
  version "1.9.5"
  sha256 "7b5e8f2217bb908287929f22a538b59d405e9cfec4f6b369444d7d287074a57c"

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
