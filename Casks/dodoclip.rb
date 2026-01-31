cask "dodoclip" do
  version "1.2.2"
  sha256 "38f74288062605216857b21e2401e78b020e6e646acbad736fff93a61cfba668"

  url "https://github.com/DodoApps/dodoclip/releases/download/v#{version}/DodoClip-#{version}.dmg"
  name "DodoClip"
  desc "macOS clipboard manager"
  homepage "https://github.com/DodoApps/dodoclip"

  depends_on macos: ">= :sonoma"

  app "DodoClip.app"

  zap trash: [
    "~/Library/Preferences/com.dodoclip.plist",
    "~/Library/Application Support/DodoClip",
  ]

  caveats <<~EOS
    DodoClip is not notarized. On first launch, you may need to:
    1. Right-click the app and select "Open"
    2. Click "Open" in the security dialog

    Or run: xattr -cr /Applications/DodoClip.app
  EOS
end
