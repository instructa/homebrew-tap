class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.7.1/planr-darwin-arm64.tar.gz"
      sha256 "d0d300d8e2145c3f42e96ae1ac89e827696bdbfba0ecd349dabcbc5ca6f87cce"
    else
      url "https://github.com/instructa/planr/releases/download/v1.7.1/planr-darwin-x86_64.tar.gz"
      sha256 "4f402adbd6f78fefd0d15bed7e79f4659a992ca877f3748926afc49322048bb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.7.1/planr-linux-arm64.tar.gz"
      sha256 "e88b76b2d0a6fb095c102444e29158a31721259e3eb8c4846960d1557ee98ea4"
    else
      url "https://github.com/instructa/planr/releases/download/v1.7.1/planr-linux-x86_64.tar.gz"
      sha256 "9ee0aade71fc7c880bb35a6a5411c5b6b8a1f09192c24926c333370383523d2b"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
