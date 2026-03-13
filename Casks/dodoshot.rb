cask "dodoshot" do
  version "1.4.1"
  sha256 "224bd0a99a3623290408127a65463fff6417afb6588a3d23162dfefdcef9bf4c"

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
