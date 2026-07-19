cask "kedi" do
  version "0.3.1"
  sha256 "83f8965a9172e196a0d58103e9fcd9697bd1b7212c7d1adee004f82192a98ecb"

  url "https://github.com/kannonski/warden/releases/download/v#{version}/kedi_#{version}_universal.dmg"
  name "kedi"
  desc "Governed terminal — native Tauri app"
  homepage "https://github.com/kannonski/warden"

  # Track GitHub releases so `brew outdated`/`brew upgrade` see new versions.
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "kedi.app"

  # kedi is not yet code-signed/notarized (no paid Apple Developer account), so macOS
  # quarantines it. Install with `--no-quarantine` to skip Gatekeeper:
  #   brew install --cask --no-quarantine kannonski/kedi/kedi
  # (or right-click the app the first time → Open).

  zap trash: [
    "~/Library/Application Support/dev.kedi.terminal",
  ]
end
