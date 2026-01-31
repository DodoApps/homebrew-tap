cask "dodoclip" do
  version "1.2.2"
  sha256 "38f74288062605216857b21e2401e78b020e6e646acbad736fff93a61cfba668"

  url "https://github.com/DodoApps/dodoclip/releases/download/v#{version}/DodoClip-#{version}.dmg"
  name "DodoClip"
  desc "macOS clipboard manager"
  homepage "https://github.com/DodoApps/dodoclip"

  depends_on macos: ">= :sonoma"

  app "DodoClip.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/DodoClip.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.dodoclip.plist",
    "~/Library/Application Support/DodoClip",
  ]
end
