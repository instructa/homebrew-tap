class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.19/planr-darwin-arm64.tar.gz"
      sha256 "6a44f450743437d11d383de6cc9c488f4afcde08855f06384dee66b262449ece"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.19/planr-darwin-x86_64.tar.gz"
      sha256 "1d4a8fe608843409a08ac4cb2435aa473cf4a1d7adb01cb78a183615de96d7b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.19/planr-linux-arm64.tar.gz"
      sha256 "20f3e2ddf6838cbf95560e8b3f67ae9ea6ad01296e178fed7f287d1b982e08c0"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.19/planr-linux-x86_64.tar.gz"
      sha256 "f45d044cb951d19d247576bc7239f4b3111fa0ffc95e5b83a13c15d79ea2dabd"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
