class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.5.2/planr-darwin-arm64.tar.gz"
      sha256 "efdec23f54397b046c4b7f5242f3c668990f32153901927f9e70c8ead743540b"
    else
      url "https://github.com/instructa/planr/releases/download/v1.5.2/planr-darwin-x86_64.tar.gz"
      sha256 "7be9d00d146f31a485b9742ae95b3c74c07360dcd6d1bd51e6df6783570a317a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.5.2/planr-linux-arm64.tar.gz"
      sha256 "6388ca6aed7bc2ac58fa0240bc35ac26607044027fd5251622889e39dfde4a83"
    else
      url "https://github.com/instructa/planr/releases/download/v1.5.2/planr-linux-x86_64.tar.gz"
      sha256 "3d12fc201f224b749f8c4cd3525aab986443e4bdbefeb370978d65cfce31bcdd"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
