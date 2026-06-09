class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.0.0/planr-darwin-arm64.tar.gz"
      sha256 "2921199959b1b3a666761e9d7e6e0004c4fc0122d827371dbaa2503dcca5fec3"
    else
      url "https://github.com/instructa/planr/releases/download/v1.0.0/planr-darwin-x86_64.tar.gz"
      sha256 "22ea9bfafd9e261c622653b0a900480aec1658de5749ace3d184bc46f22c49f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.0.0/planr-linux-arm64.tar.gz"
      sha256 "8a8ac8c1195e55a64edb282b88b624dac94b429a476729801485aeb782b75336"
    else
      url "https://github.com/instructa/planr/releases/download/v1.0.0/planr-linux-x86_64.tar.gz"
      sha256 "11951fa75f501f7d4f6e362fb061fed9058116b7a530fc40e914d798c49feb51"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
