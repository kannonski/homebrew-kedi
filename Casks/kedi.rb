cask "kedi" do
  version "0.4.0"
  sha256 "51b5f78326c39f7eceb18d6333f9d2213ff0d6c4cc1d9796dbbe8487e424e8f5"

  url "https://github.com/kannonski/warden/releases/download/v#{version}/kedi_#{version}_universal.dmg"
  name "kedi"
  desc "Governed terminal — native Tauri app"
  homepage "https://github.com/kannonski/warden"

  # Track GitHub releases so `brew outdated`/`brew upgrade` see new versions.
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "kedi.app"

  # kedi is not yet code-signed/notarized (no paid Apple Developer account), so macOS
  # quarantines it. Install with `--no-quarantine` to skip Gatekeeper:
  #   brew install --cask --no-quarantine kannonski/kedi/kedi
  # (or right-click the app the first time → Open).

  zap trash: "~/Library/Application Support/dev.kedi.terminal"
end
