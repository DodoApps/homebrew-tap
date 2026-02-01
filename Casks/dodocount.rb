cask "dodocount" do
  version "1.2.0"
  sha256 "e263882776bc415934fd7ca1b88638b3c5e5f2963e7e0fc7417b8db125a9cc77"

  url "https://github.com/DodoApps/dodocount/releases/download/v#{version}/DodoCount-#{version}.dmg"
  name "DodoCount"
  desc "macOS menubar app for Google Analytics 4 and Search Console"
  homepage "https://github.com/DodoApps/dodocount"

  depends_on macos: ">= :sonoma"

  app "DodoCount.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/DodoCount.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.dodocount.plist",
    "~/Library/Application Support/DodoCount",
  ]
end
