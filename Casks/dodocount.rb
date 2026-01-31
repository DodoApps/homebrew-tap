cask "dodocount" do
  version "1.1.0"
  sha256 "9cd88ed45f3651f37977925bc68d4b695711aa3fb5a4905658b5ccd953336377"

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
