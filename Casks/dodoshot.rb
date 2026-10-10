cask "dodoshot" do
  version "1.4.5"
  sha256 "1655ed1efba1ff23c94fc4b0ebc43b9c48b692a474523732cfafcbcaf11d2a0f"

  url "https://github.com/DodoApps/dodoshot/releases/download/v#{version}/DodoShot-#{version}.dmg"
  name "DodoShot"
  desc "Screenshot and screen recording tool"
  homepage "https://github.com/DodoApps/dodoshot"

  depends_on macos: :sonoma

  app "DodoShot.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/DodoShot.app"]
  end

  zap trash: [
    "~/Library/Application Support/DodoShot",
    "~/Library/Preferences/com.dodoshot.plist",
  ]
end
