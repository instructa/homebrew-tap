class Switchloom < Formula
  desc "Deterministic model routing for coding agents"
  homepage "https://github.com/instructa/switchloom"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.3.0/switchloom-darwin-arm64.tar.gz"
      sha256 "e87d40f28553996b27313c82823f5f633e8e616197484d3b110bc1dc19ecb039"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.3.0/switchloom-darwin-x86_64.tar.gz"
      sha256 "81485d39947f7e27a8693014b8eab346cfe7eaa72d3466420ac24068be12946e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.3.0/switchloom-linux-arm64.tar.gz"
      sha256 "09e063d95dc55a12108f75eacc1f3e7e04a4783d537244b4a94180cd2c34f678"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.3.0/switchloom-linux-x86_64.tar.gz"
      sha256 "4636f564f884b6e710a1aa78a7429731995c69006603fab4ea663f6378d40ded"
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
