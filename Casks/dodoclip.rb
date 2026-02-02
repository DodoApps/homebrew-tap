cask "dodoclip" do
  version "1.3.1"
  sha256 "a38485b7203b98db8ade156337c3e40efe3c116014cdc0dd55790ed7334c9ae9"

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
