class Switchloom < Formula
  desc "Deterministic model routing for coding agents"
  homepage "https://github.com/instructa/switchloom"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.3.2/switchloom-darwin-arm64.tar.gz"
      sha256 "bd12398fa6a511c4d002cc7284aa93265139ba41f91268ac64a1f55cf10110fb"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.3.2/switchloom-darwin-x86_64.tar.gz"
      sha256 "1ff2a58b431d0b882762dd416eb78580e106524cc00a72cd6abed597e35d8ca2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.3.2/switchloom-linux-arm64.tar.gz"
      sha256 "9f5810d7dbe5492e970549fbe7eadb3b553a3bfa9daa69bfddaf99bb94ff0614"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.3.2/switchloom-linux-x86_64.tar.gz"
      sha256 "45f282b8e1dea1e4dbafee34e9f2539ea931a0e8784a9f7286fba240bbdf16a1"
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
