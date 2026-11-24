cask "caesardb" do
  version "0.12.13"
  sha256 "1e4afcedac4a04fd2b3356b59ad6399ea5c5ef94e88f42457ac5d39e9d75f38b"

  url "https://github.com/cesargarridor/caesardb/releases/download/v#{version}/CaesarDB_#{version}_universal.dmg"
  name "CaesarDB"
  desc "Native DynamoDB desktop client"
  homepage "https://cesargarridor.github.io/caesardb/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "CaesarDB.app"

  uninstall quit: "com.cesargarrido.caesardb"

  # `brew uninstall --zap` también borra las conexiones guardadas y las credenciales cifradas de CaesarDB.
  zap trash: [
    "~/Library/Application Support/CaesarDB",
    "~/Library/Application Support/com.cesargarrido.caesardb",
    "~/Library/Caches/com.cesargarrido.caesardb",
    "~/Library/Preferences/com.cesargarrido.caesardb.plist",
    "~/Library/Saved Application State/com.cesargarrido.caesardb.savedState",
    "~/Library/WebKit/com.cesargarrido.caesardb",
  ]
end
