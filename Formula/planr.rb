class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.3.0/planr-darwin-arm64.tar.gz"
      sha256 "525d7be796ab6df0e7dcfa75ac213b499b7844b173a0e5087852f93f06276b86"
    else
      url "https://github.com/instructa/planr/releases/download/v1.3.0/planr-darwin-x86_64.tar.gz"
      sha256 "260ae118e375ba4ddef2083855e478c095d1dcc8c128ad3a20653a8925ab82f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.3.0/planr-linux-arm64.tar.gz"
      sha256 "256b28a5074a8aa8fbc985ae7ee1550e9978ec543fb4624f25e55838ffb394ef"
    else
      url "https://github.com/instructa/planr/releases/download/v1.3.0/planr-linux-x86_64.tar.gz"
      sha256 "1be17c3ab59510ab5ead5b0df48b0079ae0e098cd630f5810652b71bf9cf4b17"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
