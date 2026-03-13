cask "dodoshot" do
  version "1.4.3"
  sha256 "86156df5edb12841c262df8dd071a6a99d80e125626105500d4b3b6adf42f26f"

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
