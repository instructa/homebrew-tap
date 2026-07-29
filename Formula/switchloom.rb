class Switchloom < Formula
  desc "Deterministic model routing for coding agents"
  homepage "https://github.com/instructa/switchloom"
  version "0.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.3.6/switchloom-darwin-arm64.tar.gz"
      sha256 "6ed3635cc18c85d1b94032b5da2be2d61b21c6e5d0f031d5ec5c2a277819302e"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.3.6/switchloom-darwin-x86_64.tar.gz"
      sha256 "65e392c9ec44cbfb738966b3b9093f4fc9e5482e3c2822818ac9443ba487dcd5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.3.6/switchloom-linux-arm64.tar.gz"
      sha256 "45d30246e99e09c3736df75eaf4520eb928ceadd2fd61e321a281bd63b30f4e1"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.3.6/switchloom-linux-x86_64.tar.gz"
      sha256 "4412a0d7963fe5ca4656fb16d8578b281e62d6613ceacf4af0af1169079808c4"
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
