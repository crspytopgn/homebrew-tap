cask "opensgolf" do
  version "0.6.1"
  sha256 "b407651c044b4ac0e812327bc4f65be329a52485e5b137ba82d4a20a328092d1"

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
