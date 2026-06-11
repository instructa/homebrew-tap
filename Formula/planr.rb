class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.16/planr-darwin-arm64.tar.gz"
      sha256 "4e12fdb71a6eb65a67800fc20d6f8b03fd4bace3127ec22c6b36ca9ae3287a5e"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.16/planr-darwin-x86_64.tar.gz"
      sha256 "d0cf6b41f5ecf868573f9c85c628c5971fe4d9320ef68431c6baef65a16c7d94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.16/planr-linux-arm64.tar.gz"
      sha256 "a6a6e5a85ce9a8cb083d193d7a130d13f84075dab168195af73cd5547092ce28"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.16/planr-linux-x86_64.tar.gz"
      sha256 "0b1b4fb667a139e19f47450f24c005e8d215c3fcc2b638bfd948801f726062ec"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
