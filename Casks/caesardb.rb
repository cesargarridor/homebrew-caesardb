cask "caesardb" do
  version "0.12.16"
  sha256 "48ca48bbab5dcb6abbb5f580992346bb246a00c535fc038fff35d813045b01cf"

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
