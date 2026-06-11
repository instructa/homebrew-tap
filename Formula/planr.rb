class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.18/planr-darwin-arm64.tar.gz"
      sha256 "414f0ca6f32e8b92467f7c6b57de5a93693e3a68233e3ab166d46648be70d747"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.18/planr-darwin-x86_64.tar.gz"
      sha256 "8b2024e84d10a7cc38c3c5531e964e3546b8f0f7ceeb94daa2f4cf82b591f68f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.18/planr-linux-arm64.tar.gz"
      sha256 "fc6a872423047b67b1a3ba57d63363ffdfe5663e5eb382a377819fbd443e9b26"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.18/planr-linux-x86_64.tar.gz"
      sha256 "04724c960314de160781908e5c58acef1c88d096190175dacac53757d9cd28dd"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
