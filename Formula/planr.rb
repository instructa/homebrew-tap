class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.15/planr-darwin-arm64.tar.gz"
      sha256 "017db4a808e801bad4a8ca534f20e26d5877aa0cd94e6115ea69075f02bac861"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.15/planr-darwin-x86_64.tar.gz"
      sha256 "460143cf6021c925b74075013d766bd22d8bce2702cf672c04806a3e9feb7ca7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.15/planr-linux-arm64.tar.gz"
      sha256 "254902f4a8401f760b0b8eeaa435630ece1270b0e4ccca1e59b365b625929484"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.15/planr-linux-x86_64.tar.gz"
      sha256 "7525b2def780013bcef5e2a9597725ba5da340307e91cc6c62d105ac7159d442"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
