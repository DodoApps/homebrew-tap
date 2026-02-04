cask "dodoshop" do
  version "1.0.1"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/DodoApps/dodoshop/releases/download/v#{version}/DodoShop-#{version}-arm64-mac.zip"
  name "DodoShop"
  desc "Shopify analytics dashboard for macOS"
  homepage "https://github.com/DodoApps/dodoshop"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "DodoShop.app"

  zap trash: [
    "~/Library/Application Support/DodoShop",
    "~/Library/Preferences/com.dodoshop.app.plist",
    "~/Library/Saved Application State/com.dodoshop.app.savedState",
  ]
end
