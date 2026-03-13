cask "dodoshot" do
  version "1.4.2"
  sha256 "47e5b28c053f84145bb66986c4a5cf81b108ebc9b4c0b5371112579c7dad73e2"

  url "https://github.com/DodoApps/dodoshot/releases/download/v#{version}/DodoShot-#{version}.dmg"
  name "DodoShot"
  desc "macOS screenshot and screen recording tool"
  homepage "https://github.com/DodoApps/dodoshot"

  depends_on macos: ">= :sonoma"

  app "DodoShot.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/DodoShot.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.dodoshot.plist",
    "~/Library/Application Support/DodoShot",
  ]
end
