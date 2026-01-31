cask "dodotidy" do
  version "1.0.5"
  sha256 "66c5e27f04875a519b821ee053f29b5c9321d598d57c0a94417ff29f988c5690"

  url "https://github.com/dodoapps/dodotidy/releases/download/v#{version}/DodoTidy-#{version}.dmg"
  name "DodoTidy"
  desc "macOS system cleaner and disk analyzer"
  homepage "https://github.com/dodoapps/dodotidy"

  depends_on macos: ">= :sonoma"

  app "DodoTidy.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/DodoTidy.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.dodotidy.app.plist",
  ]
end
