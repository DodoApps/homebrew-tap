cask "dodonest" do
  version "1.0.1"
  sha256 "2e1a9c0f98b0cfa5b09c86a2524458554fa6e803cbd57d1595372c0ae02f822a"

  url "https://github.com/dodoapps/dodonest/releases/download/v1.0.0/DodoNest-#{version}.dmg"
  name "DodoNest"
  desc "macOS menu bar organizer - drag and drop to rearrange menu bar items"
  homepage "https://github.com/dodoapps/dodonest"

  depends_on macos: ">= :sonoma"

  app "DodoNest.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/DodoNest.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/DodoNest",
    "~/Library/Caches/com.bluewave.DodoNest",
    "~/Library/Preferences/com.bluewave.DodoNest.plist",
  ]
end
