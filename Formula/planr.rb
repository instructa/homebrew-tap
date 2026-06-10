class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.8/planr-darwin-arm64.tar.gz"
      sha256 "14a980e4a0523f9a240225023035cb632c5344439671b54373a274ff5e2e5279"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.8/planr-darwin-x86_64.tar.gz"
      sha256 "c5c3b5b991ac2d35b35839fc76048e5ce7d9fb4e59e5689dfb1862c62b0a4ab5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.8/planr-linux-arm64.tar.gz"
      sha256 "c539cf9f40e54e228492f079b143ec3107db7a3f9b74b5f911871ac22c2f9796"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.8/planr-linux-x86_64.tar.gz"
      sha256 "4f18fbe800d23cf913edb4e946b2fecf27e9d506e3371fe7e781c9d3cf940e36"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
