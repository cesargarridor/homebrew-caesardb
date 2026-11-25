cask "caesardb" do
  version "0.12.14"
  sha256 "9fed9440d5e0808bb926769ab578a6bdd4b2e30fbadc5fec3f373da414decb4d"

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
