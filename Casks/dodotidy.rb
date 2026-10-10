cask "dodotidy" do
  version "1.0.7"
  sha256 "e8a97b70f47b6ce3717c1c647f78b795b687f6a607bc36fd51aa8a29356f5965"

  url "https://github.com/dodoapps/dodotidy/releases/download/v#{version}/DodoTidy-#{version}.dmg"
  name "DodoTidy"
  desc "System cleaner and disk analyzer"
  homepage "https://github.com/dodoapps/dodotidy"

  depends_on macos: :sonoma

  app "DodoTidy.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/DodoTidy.app"]
  end

  zap trash: "~/Library/Preferences/com.dodotidy.app.plist"
end
