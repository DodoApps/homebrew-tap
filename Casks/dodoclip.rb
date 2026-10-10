cask "dodoclip" do
  version "1.3.1"
  sha256 "22f23a8397640ce39d61fb7133622aa9bcc5936268d1f233dee3cd406f941425"

  url "https://github.com/DodoApps/dodoclip/releases/download/v#{version}/DodoClip-#{version}.dmg"
  name "DodoClip"
  desc "Clipboard manager"
  homepage "https://github.com/DodoApps/dodoclip"

  depends_on macos: :sonoma

  app "DodoClip.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/DodoClip.app"]
  end

  zap trash: [
    "~/Library/Application Support/DodoClip",
    "~/Library/Preferences/com.dodoclip.plist",
  ]
end
