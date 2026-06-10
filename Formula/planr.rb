class Planr < Formula
  desc "Local-first planning and execution coordination for coding agents"
  homepage "https://github.com/instructa/planr"
  version "1.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.11/planr-darwin-arm64.tar.gz"
      sha256 "0826b99a22670b7b291e02e2b9ae9598761b610a03f44b79acce5f847df606e0"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.11/planr-darwin-x86_64.tar.gz"
      sha256 "bc69aa6eb6b4abe12e0bc7ca42e90fa2b89ed1712f47338da559da31017d257a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/planr/releases/download/v1.1.11/planr-linux-arm64.tar.gz"
      sha256 "ec0df43793462bd8a079e242cc24486965dfb93871e587830673b95f956b915c"
    else
      url "https://github.com/instructa/planr/releases/download/v1.1.11/planr-linux-x86_64.tar.gz"
      sha256 "cab6a83bd1ece4bef49561018e52b303fc6e1e8cb8a79eca1beb0ff22ae04390"
    end
  end

  def install
    bin.install "planr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/planr --version")
  end
end
