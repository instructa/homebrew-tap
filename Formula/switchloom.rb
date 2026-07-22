class Switchloom < Formula
  desc "Deterministic model routing for coding agents"
  homepage "https://github.com/instructa/switchloom"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.3.1/switchloom-darwin-arm64.tar.gz"
      sha256 "1b5d022e6e9839ea16cdc51cd55283d3f116f7d52261f40a52b2b0c20d6797bf"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.3.1/switchloom-darwin-x86_64.tar.gz"
      sha256 "e0a2e143d75b90651f714f144111c30e38cbfa3c8d407e0af45c70ea8fc519a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.3.1/switchloom-linux-arm64.tar.gz"
      sha256 "2116b8cf934d24a04973c0fd76cbf88d9f17eaab9b032446e87d445bc8bb3b73"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.3.1/switchloom-linux-x86_64.tar.gz"
      sha256 "836abf1689cc09e5254273cd379f285174be6886ce60932008e48732883af844"
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
