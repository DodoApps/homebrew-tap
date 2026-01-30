cask "dodocount" do
  version "1.0.0"
  sha256 "76d41f215bcaed06dc801fa5712fec408abc19c2b0eda014f1d53de4f405a644"

  url "https://github.com/DodoApps/dodocount/releases/download/v#{version}/DodoCount-#{version}.dmg"
  name "DodoCount"
  desc "macOS menubar app for Google Analytics 4 and Search Console"
  homepage "https://github.com/DodoApps/dodocount"

  depends_on macos: ">= :sonoma"

  app "DodoCount.app"

  zap trash: [
    "~/Library/Preferences/com.dodocount.plist",
    "~/Library/Application Support/DodoCount",
  ]
end
