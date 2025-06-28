cask "vencord-installer" do
  version "1.4.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  url "https://github.com/Vencord/Installer/releases/download/v#{version}/VencordInstaller.MacOS.zip",
    verified: "github.com/Vencord/Installer/"
  name "Vencord Installer"
  desc "A cross platform gui/cli app for installing Vencord"
  homepage "https://github.com/Vencord/Installer"

  no_autobump! because: :requires_manual_review

  depends_on cask: "discord"

  app "VencordInstaller.app"

  # todo: check for the creation of these
  zap trash: [
    "~/Library/Application Support/Vencord Installer",
    "~/Library/Preferences/dev.vendicated.vencordinstaller.plist",
    "~/Library/Saved Application State/dev.vendicated.vencordinstaller.savedState",
  ]
end
