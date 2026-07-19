class Switchloom < Formula
  desc "Deterministic model routing for coding agents"
  homepage "https://github.com/instructa/switchloom"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.2.1/switchloom-darwin-arm64.tar.gz"
      sha256 "2ec8344ecd38b41d4af47a77f6d5ff7882d4298ea73555d4c7cffa984dcdea0d"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.2.1/switchloom-darwin-x86_64.tar.gz"
      sha256 "fc70d0b52c9b0e4932a505debba8d2aa75e0478189574f928fef6fdd312faf5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.2.1/switchloom-linux-arm64.tar.gz"
      sha256 "561ebc772633f285326c08a3a9b9a8b2316bde0ea99f0d9a32def4a1838bf355"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.2.1/switchloom-linux-x86_64.tar.gz"
      sha256 "0ba788c46404892f7bd7c1828eb9a52e9b92b6deba64bf71fed5eb3d39728deb"
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
