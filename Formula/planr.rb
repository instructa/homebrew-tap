class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.5.0/planr-darwin-arm64.tar.gz"
      sha256 "330948727cf2d432a958dfd986e4470c21a2c2d116cf8d06a007f1fddde6e6c5"
    else
      url "https://github.com/instructa/planr/releases/download/v1.5.0/planr-darwin-x86_64.tar.gz"
      sha256 "a2d52e21fd68af9d7f533af57eb7ddc5277b08b11b4711418dedfa5b248a820a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.5.0/planr-linux-arm64.tar.gz"
      sha256 "ca06c72f60a062fbd2491f57329849f41d1ce1a0b55afe0a16de3201553a1bff"
    else
      url "https://github.com/instructa/planr/releases/download/v1.5.0/planr-linux-x86_64.tar.gz"
      sha256 "d5ee4924fcfeb258ae21675523622f66ee995abd492a8ed212cdd15ca9eea2f8"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
