class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.2.0/planr-darwin-arm64.tar.gz"
      sha256 "158cb00a29a5efbd35c1a2adfde262039bcb57477f6ce867da71bd9084a6bfa9"
    else
      url "https://github.com/instructa/planr/releases/download/v1.2.0/planr-darwin-x86_64.tar.gz"
      sha256 "f53bbc40e91efe731a342ca1146f4dfd53a7ee1b53ac8ea6a64f3df50cb2a62d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.2.0/planr-linux-arm64.tar.gz"
      sha256 "49c12b03f8fd26de4f0dd495c2a04c064a73541e406fe132946fb8632e423599"
    else
      url "https://github.com/instructa/planr/releases/download/v1.2.0/planr-linux-x86_64.tar.gz"
      sha256 "933385bf1f52e1342d772183ff6ed3cfbe0b6727890f62802b0437ec9c806121"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
