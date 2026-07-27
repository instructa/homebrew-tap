class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.8.0/planr-darwin-arm64.tar.gz"
      sha256 "ea765e28461ebd1dae5c01e3cbf1433746349c21e5816b351cf5a9876fe4da84"
    else
      url "https://github.com/instructa/planr/releases/download/v1.8.0/planr-darwin-x86_64.tar.gz"
      sha256 "2b0c838fce0acbb9ed109a5c31a30450f0e9100c3f4c9fc76e4dc72c888570fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.8.0/planr-linux-arm64.tar.gz"
      sha256 "68ca1520576084fb5a3ff5f2c60688fe0d64b50d84dc1582b3630584eaf83e0c"
    else
      url "https://github.com/instructa/planr/releases/download/v1.8.0/planr-linux-x86_64.tar.gz"
      sha256 "4411a832d04286dfa4d70b04251f8caa661539a8f342922c76f35d8c10ed3c73"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
