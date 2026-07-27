class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.9.0/planr-darwin-arm64.tar.gz"
      sha256 "752224e3d78b8c4dcf4a23fc6aeb2b41cdfb19b3d383cd9c4dca18bae1f2d5ac"
    else
      url "https://github.com/instructa/planr/releases/download/v1.9.0/planr-darwin-x86_64.tar.gz"
      sha256 "110301cf56cdc71719ba4db971031765af20056cf593fced416ffae4445b1ccb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.9.0/planr-linux-arm64.tar.gz"
      sha256 "4e4659be0620082d0b494a7dff3ce7e4931808363bdb878f55373c8bae010e74"
    else
      url "https://github.com/instructa/planr/releases/download/v1.9.0/planr-linux-x86_64.tar.gz"
      sha256 "d5dc9d8106b3d584c7751e6346acb0755656bd12995e1bba497568db9686cc96"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
