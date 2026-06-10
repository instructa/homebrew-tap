class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.13/planr-darwin-arm64.tar.gz"
      sha256 "f41ec517bcc3604f9653c4a6a88fef17acee5fea4afb878c75759e1c13485893"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.13/planr-darwin-x86_64.tar.gz"
      sha256 "ceef102700b2efb8a65cb7ffa27080d69f750182a17f937c6d220bb8b4703b1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.13/planr-linux-arm64.tar.gz"
      sha256 "c54cdcc8c1ededf6a92b71edb09b5686980e99527326b6ab76e3eaa030d85a2c"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.13/planr-linux-x86_64.tar.gz"
      sha256 "922ee621eb8fe24933f2bc71f77e522132ca7a610e70df88ef941b23db4c3ed1"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
