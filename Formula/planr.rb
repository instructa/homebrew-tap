class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.2/planr-darwin-arm64.tar.gz"
      sha256 "8b89942f956b8df6f0e4902b9b37535e0ac2afb41bd636f7f63167d5468ad278"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.2/planr-darwin-x86_64.tar.gz"
      sha256 "15906cfe00399971f7bd5c802a1a83ead94060b8f30ee1ed7e3d5790c2e2fa6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.2/planr-linux-arm64.tar.gz"
      sha256 "693372a509040e193e95eec12c2d10503a86cd7ad39ddfbe390ed595e34b65e6"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.2/planr-linux-x86_64.tar.gz"
      sha256 "5f68792d49c5e54b4e8734714e2a440389c1c1266e09f9383a9071db29af50fd"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
