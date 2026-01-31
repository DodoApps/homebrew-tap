cask "dodopass" do
  version "1.0.0"
  sha256 "8eda787074d95e49008f0ce6cf237a1197c68c8e0d74e6f7d5cdefa912db186a"

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
