cask "dodopass" do
  version "1.0.1"
  sha256 "4ec5f6d1716101fbeab65d10b99e60f1e516e4aa5c32366753e90c3b9a3231b7"

  url "https://github.com/DodoApps/dodopass/releases/download/v#{version}/DodoPass-#{version}.dmg"
  name "DodoPass"
  desc "Password manager with Touch ID support"
  homepage "https://github.com/DodoApps/dodopass"

  depends_on macos: :sonoma

  app "DodoPass.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/DodoPass.app"]
  end

  zap trash: [
    "~/Library/Application Support/DodoPass",
    "~/Library/Caches/com.dodopass",
    "~/Library/Preferences/com.dodopass.plist",
  ]
end
