class Switchloom < Formula
  desc "Deterministic model routing for coding agents"
  homepage "https://github.com/instructa/switchloom"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.1.1/switchloom-darwin-arm64.tar.gz"
      sha256 "2ab76b7a4f52ea772d38531a88eec2e11c284635304b6107947ba0f596ef93dd"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.1.1/switchloom-darwin-x86_64.tar.gz"
      sha256 "a1b94edb9c218604f8e7908277d801f229c6a2fc43218a9a132b83c3032f3bdf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.1.1/switchloom-linux-arm64.tar.gz"
      sha256 "1a61adcdfffb390fa13ee0aa61f68744d07f8d73b8b5e82d33638d4e2b7d631c"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.1.1/switchloom-linux-x86_64.tar.gz"
      sha256 "870dcff9d7efe12728bf26982aef449d1ed459b326372eb122db3b05f67374c2"
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
