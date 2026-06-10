class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.10/planr-darwin-arm64.tar.gz"
      sha256 "6a675a7542a400685516e997fc867722a913948ee5415f1fa949bfe1dad51ee3"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.10/planr-darwin-x86_64.tar.gz"
      sha256 "854b5b77b99254565c89b26c6c2f345d6d5df1377713ad39c371badc68908fd5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.10/planr-linux-arm64.tar.gz"
      sha256 "cf1984e0f0eecf9d3f5e4e17f6bbaa690255f736a42bf80a894d375a631ed771"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.10/planr-linux-x86_64.tar.gz"
      sha256 "713f5ae070d39a3f6ed8badae43374e89e482b63eeb86770c609d5a5bbe99098"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
