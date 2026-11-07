cask "opensgolf" do
  version "0.7.0"
  sha256 "7ad9fc1e627561162eec8ee9184f334eee7734bf788605d7791c0a9b1c3d1e7d"

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
