class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.6.0/planr-darwin-arm64.tar.gz"
      sha256 "bfdd89de1af87df0840414aafabbe38ab8120b94a1af4216daf5e4bd7297ab98"
    else
      url "https://github.com/instructa/planr/releases/download/v1.6.0/planr-darwin-x86_64.tar.gz"
      sha256 "93545d5676ad9a241154c10f7425ce76a7aa4c23243f29b713f085e74f6a8004"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.6.0/planr-linux-arm64.tar.gz"
      sha256 "f08ef81fe1d789d57e79249a4aa0f001860a97507ac987412e8092196a7a0e4c"
    else
      url "https://github.com/instructa/planr/releases/download/v1.6.0/planr-linux-x86_64.tar.gz"
      sha256 "6ac641abd96a7c135e9f7bf265adb55519bae84e7010ceebf3a6d84f1825d012"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
