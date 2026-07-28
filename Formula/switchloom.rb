class Switchloom < Formula
  desc "Deterministic model routing for coding agents"
  homepage "https://github.com/instructa/switchloom"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.3.5/switchloom-darwin-arm64.tar.gz"
      sha256 "33e4c63a9aabfd693d3ebb91f4032e04f8213065bc13a9881edfd20c652a0d48"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.3.5/switchloom-darwin-x86_64.tar.gz"
      sha256 "74bcfcc323754239399f903dd27b76ee4693c31bc5ac6b0cfe7f71881130cc69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/instructa/switchloom/releases/download/v0.3.5/switchloom-linux-arm64.tar.gz"
      sha256 "ee80c0e1b947348452ba1c09f481a541442ef70cf4fa913f87957f3b4f703468"
    else
      url "https://github.com/instructa/switchloom/releases/download/v0.3.5/switchloom-linux-x86_64.tar.gz"
      sha256 "7faf321724a253c5eea43b77d71dee2a93ef81e16b770b35035d56d561ec855a"
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
