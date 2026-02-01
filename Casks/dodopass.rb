cask "dodopass" do
  version "1.0.1"
  sha256 "4ec5f6d1716101fbeab65d10b99e60f1e516e4aa5c32366753e90c3b9a3231b7"

  url "https://github.com/DodoApps/dodopass/releases/download/v#{version}/DodoPass-#{version}.dmg"
  name "DodoPass"
  desc "Native macOS password manager with Touch ID support"
  homepage "https://github.com/DodoApps/dodopass"

  depends_on macos: ">= :sonoma"

  app "DodoPass.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/DodoPass.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.dodopass.plist",
    "~/Library/Application Support/DodoPass",
    "~/Library/Caches/com.dodopass",
  ]
end
