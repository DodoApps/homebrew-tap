cask "dodopulse" do
  version "1.1.1"
  sha256 "669812429370ba6e6fb3f0d8224bb59a18d29c6b50440483dc999fe47045d040"

  url "https://github.com/dodoapps/dodopulse/releases/download/v#{version}/DodoPulse-#{version}.dmg"
  name "DodoPulse"
  desc "Menu bar system monitor"
  homepage "https://github.com/dodoapps/dodopulse"

  depends_on macos: :monterey

  app "DodoPulse.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/DodoPulse.app"]
  end

  zap trash: "~/Library/Preferences/com.bluewave-labs.dodopulse.plist"
end
