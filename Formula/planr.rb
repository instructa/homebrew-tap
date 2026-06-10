class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.3/planr-darwin-arm64.tar.gz"
      sha256 "3a0d2e7f22a1acc926b8464a342564df0e6bbb909d636e6ea986c43b20740743"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.3/planr-darwin-x86_64.tar.gz"
      sha256 "621cd6de08be881ff578f36b521b047d46b4d6a366e9df025db5bec0c22f9c55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.3/planr-linux-arm64.tar.gz"
      sha256 "156dfe5e6913a63fbb181491ba6b5299c546e14ffd2439bb259f9ad9263124f1"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.3/planr-linux-x86_64.tar.gz"
      sha256 "e3dd6c3d2dee1b87507ffe19bbffcb20f28bb364f31055b501eea967aa6ceccc"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
