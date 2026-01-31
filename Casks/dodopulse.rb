cask "dodopulse" do
  version "1.1.0"
  sha256 "f812ee76ea6b17387c31c21a24dae92ada3cd16072659534379033aeba462050"

  url "https://github.com/dodoapps/dodopulse/releases/download/v#{version}/DodoPulse-#{version}.dmg"
  name "DodoPulse"
  desc "Lightweight macOS menu bar system monitor"
  homepage "https://github.com/dodoapps/dodopulse"

  depends_on macos: ">= :monterey"

  app "DodoPulse.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/DodoPulse.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.bluewave-labs.dodopulse.plist",
  ]
end
