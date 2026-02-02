cask "dodoshot" do
  version "1.2.9"
  sha256 "016c71bc94123cd16653a1b28a453193d06072301145d5ac0e573acbd1d68448"

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
