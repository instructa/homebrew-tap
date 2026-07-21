class Switchloom < Formula
  desc "Deterministic model routing for coding agents"
  homepage "https://github.com/instructa/switchloom"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.2.2/switchloom-darwin-arm64.tar.gz"
      sha256 "74743a04809a0f625a791a1dc10f72e5f21a7ef5d6d99ad872d5740ebccbd6a9"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.2.2/switchloom-darwin-x86_64.tar.gz"
      sha256 "49f25b97a5958a948824da6b20176aaf0b04af39d2b7a895d5de5b5f72faa73b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.2.2/switchloom-linux-arm64.tar.gz"
      sha256 "7113cc9a2d8cd72e0f47ca257adea033f88b276fa0758d973a1a14b7af94e5f5"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.2.2/switchloom-linux-x86_64.tar.gz"
      sha256 "fc996e41fbf69beab9538c7e8132a64afe463ebfe2d1060d7168a69c817d033a"
    end
  end

  def install
    bin.install "model-routing"
    bin.install_symlink "model-routing" => "switchloom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/switchloom --version")
  end
end
