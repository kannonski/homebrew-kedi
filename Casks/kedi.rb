cask "kedi" do
  version "0.3.0"
  sha256 "075636bec48af0d16b494f69e9fd75ede57c123086e068e6188140e82e99e514"

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
