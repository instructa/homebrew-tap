class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.9/planr-darwin-arm64.tar.gz"
      sha256 "241357adfd15298c3f9ce6ef65751278db1fa1464ecfe5c53b0dd8653230e92d"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.9/planr-darwin-x86_64.tar.gz"
      sha256 "f87c13bb24c67173a4e870ea7eb0c1e730fb548b38f00b25ebcace4fe04f1483"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.9/planr-linux-arm64.tar.gz"
      sha256 "578ba04c4be87be8bee84e7abb28b1adbac2398fef9a0d3064d0f95c159a5117"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.9/planr-linux-x86_64.tar.gz"
      sha256 "24eaaa67271536c726f737a19fe5d28f6cbe965d0f3ecd50d009b28a48c8074a"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
