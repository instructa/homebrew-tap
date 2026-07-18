class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.5.1/planr-darwin-arm64.tar.gz"
      sha256 "4e6c305bea49210ed824904ca6d855b2baa8582475f768ee69e39ae9d28ec7fd"
    else
      url "https://github.com/instructa/planr/releases/download/v1.5.1/planr-darwin-x86_64.tar.gz"
      sha256 "b9fa75033e17176c64561a44d8ec42e166a94e7e71b36352bd0a25c1eb4c7517"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.5.1/planr-linux-arm64.tar.gz"
      sha256 "0160a81e235c86524f86af1ae922f81ce4a300f0f9a651b1dfdc5be74c720f07"
    else
      url "https://github.com/instructa/planr/releases/download/v1.5.1/planr-linux-x86_64.tar.gz"
      sha256 "5bc5286f077ba498d45c443d3a2a94d21c36587e4125da6ded8b08ff29c1d3cc"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
