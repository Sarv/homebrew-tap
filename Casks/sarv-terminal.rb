cask "sarv-terminal" do
  version "1.9.2"
  sha256 "95292761c9db7251f15a17bf2da78853484b8eea4e9c1ca234a979561ffa51ea"

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
