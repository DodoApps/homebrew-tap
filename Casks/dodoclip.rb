cask "dodoclip" do
  version "1.3.0"
  sha256 "9204a25b97bf5db9f03290447d72e26bedabb597b37bd7f76aa266ea3203a597"

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
