cask "dodohub" do
  version "1.0.0"
  sha256 "fb2a7c5f32127663904ca7c813a80c803ea65ee7d85e820e2a9a8a2acd4f5914"

  url "https://github.com/dodoapps/dodohub/releases/download/v#{version}/DodoHub-#{version}.dmg"
  name "DodoHub"
  desc "Native macOS app store for DodoApps applications"
  homepage "https://github.com/dodoapps/dodohub"

  depends_on macos: ">= :sonoma"

  app "DodoHub.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/DodoHub.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.dodoapps.dodohub.plist",
    "~/Library/Caches/com.dodoapps.dodohub",
  ]
end
