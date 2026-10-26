cask "opensgolf" do
  version "0.5.11"
  sha256 "105a3acf54a259b6173dcb0ccae24c9ef93cbf845e15e5a75d2c6d6e7cf6143c"

  url "https://github.com/crspytopgn/opensgolf/releases/download/v#{version}/opensgolf-macos.zip"
  name "OpenSGolf"
  desc "Open source engine for the golf course building game SimGolf"
  homepage "https://github.com/crspytopgn/opensgolf"

  livecheck do
    url :url
    strategy :github_latest
  end

  # the game can update itself (title menu: Check for updates, Update now)
  auto_updates true
  # one universal app for Apple silicon and Intel; packaging/macos/Info.plist LSMinimumSystemVersion
  depends_on macos: ">= :big_sur"

  # the zip holds a folder opensgolf-macos with the app and the documents (.github/workflows/release.yml)
  app "opensgolf-macos/OpenSGolf.app"

  zap trash: "~/Library/Application Support/OpenSGolf"
end
