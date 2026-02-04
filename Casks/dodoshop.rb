cask "dodoshop" do
  version "1.0.0"
  sha256 "cc884c051a640c63b68666639f404c122427633fd51165d47151f7370cb941b8"

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
