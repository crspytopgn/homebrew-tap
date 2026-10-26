cask "opensgolf" do
  version "0.5.8"
  sha256 "a5ab1b3cc3ad7614226170507b89d9d0ef27bc430a7a103916510307331c8d77"

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
