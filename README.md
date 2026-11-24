# Homebrew tap de CaesarDB · CaesarDB Homebrew tap

Cliente de escritorio nativo para DynamoDB (macOS, Windows, Linux): <https://cesargarridor.github.io/caesardb/>

## Instalar (macOS)

```sh
brew install --cask cesargarridor/caesardb/caesardb
```

Es el instalador universal (Apple Silicon e Intel), firmado y notarizado por Apple. La app se actualiza sola desde dentro
(`auto_updates`), así que `brew upgrade` solo hace falta si la desactivas.

```sh
brew uninstall --cask caesardb          # desinstala la app
brew uninstall --cask --zap caesardb    # además borra tus conexiones guardadas y credenciales cifradas
```

> **Aviso:** `--zap` elimina `~/Library/Application Support/CaesarDB`, donde la app guarda tus conexiones y la licencia.

## Install (macOS)

```sh
brew install --cask cesargarridor/caesardb/caesardb
```

Universal installer (Apple Silicon and Intel), signed and notarized by Apple. The app updates itself from inside, so
`brew upgrade` is only needed if you turn that off. `brew uninstall --cask --zap caesardb` also removes your saved
connections and encrypted credentials.

## Windows

```powershell
winget install cesargarridor.CaesarDB
```
