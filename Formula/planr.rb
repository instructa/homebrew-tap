class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.5/planr-darwin-arm64.tar.gz"
      sha256 "40f6b165435b720255f20c45401546896e10b3e398c715c2cd78154defe8fc6b"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.5/planr-darwin-x86_64.tar.gz"
      sha256 "ec67c3df992e6b1533ad41f4d4c731e80849eacb34314304a1e1b6612923a7eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.5/planr-linux-arm64.tar.gz"
      sha256 "5952a134c5485f7e93a8a47b055e5d7f6e4b7eafeff3d289213a5f33fb08337e"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.5/planr-linux-x86_64.tar.gz"
      sha256 "8d302b986e90c63fe92185e74bb949233890144ffb244b3f46833fce93ecc4ff"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
